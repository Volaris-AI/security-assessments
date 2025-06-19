#!/usr/bin/env bash
set -euo pipefail

# This script checks all Markdown files for broken HTTP/HTTPS links.
# It treats 2xx, 3xx, and 403 (forbidden) responses as valid.

EXIT_CODE=0

echo "Starting full Markdown link check..."
echo "Scanning for Markdown files..."
MD_FILES=$(find . -type f -name '*.md')

if [ -z "$MD_FILES" ]; then
  echo "No Markdown files found."
  exit 0
fi

for file in $MD_FILES; do
  echo "\nScanning $file for URLs..."
  # Extract URLs and strip trailing punctuation
  grep -Eo '(https?://[^ )>"\047]+)' "$file" \
    | sed -E 's/[>.,;:]+$//' \
    | sort -u \
    | while read -r url; do
      # Perform HEAD request, follow redirects
      status=$(curl -s -o /dev/null -w '%{http_code}' --max-time 10 -L "$url" || echo 000)
      # Accept 2xx, 3xx, and 403 as valid
      if [[ "$status" -eq 000 || ( "$status" -ge 400 && "$status" -ne 403 ) ]]; then
        echo "  ✗ Broken link in $file → $url (HTTP $status)"
        EXIT_CODE=1
      else
        echo "  ✓ $url (HTTP $status)"
      fi
    done
done

if (( EXIT_CODE )); then
  echo -e "\nOne or more links failed. Please fix before pushing."
  exit 1
fi

echo -e "\nAll links OK."
exit 0
