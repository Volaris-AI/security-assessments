#!/usr/bin/env bash
set -euo pipefail

# Exit code, tracks failures
EXIT_CODE=0

# Find staged or changed Markdown files
MD_FILES=$(git diff --cached --name-only --diff-filter=ACM | grep -E '\.md$' || true)
if [ -z "$MD_FILES" ]; then
  echo "No Markdown changes to check."
  exit 0
fi

echo "Checking Markdown link integrity..."

for file in $MD_FILES; do
  echo "\nScanning $file for links..."
  # Extract unique http(s) URLs
  grep -Eo '(https?://[^ )"\047]+)' "$file" \
    | sort -u \
    | while read -r url; do
      # Perform a HEAD request
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
