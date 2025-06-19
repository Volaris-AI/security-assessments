#!/usr/bin/env bash
set -euo pipefail

# Exit code tracks failures
echo "Starting full Markdown link check..."
EXIT_CODE=0

# Find all Markdown files in the repository
echo "Scanning for Markdown files..."
MD_FILES=$(find . -type f -name '*.md')
if [ -z "$MD_FILES" ]; then
  echo "No Markdown files found."
  exit 0
fi

echo "Checking links in all Markdown files..."
for file in $MD_FILES; do
  echo "\nScanning $file for URLs..."
  # Extract URLs, strip trailing punctuation
grep -Eo '(https?://[^ )>"\047]+)' "$file" | sed -E 's/[>.,;:]+$//' | sort -u | while read -r url; do
    # Perform a HEAD request to check status
    status=$(curl -s -o /dev/null -w '%{http_code}' --max-time 10 "$url" || echo 000)
    if [[ "$status" == "000" || "$status" -ge 400 ]]; then
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
