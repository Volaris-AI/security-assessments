#!/usr/bin/env bash
# scripts/build-docs.sh
# Converts Markdown docs in docs/ to Word (.docx) in build/ directory using pandoc

set -euo pipefail

# Directory for output
BUILD_DIR="build"

# Ensure pandoc is installed
if ! command -v pandoc &> /dev/null; then
  echo "Error: pandoc is not installed. Please install pandoc to use this script." >&2
  exit 1
fi

# Create build directory if it doesn't exist
mkdir -p "$BUILD_DIR"

# Enable globstar for recursive globbing
shopt -s globstar nullglob

# Convert each Markdown file
for md in docs/**/*.md; do
  # Only process regular files
  if [ -f "$md" ]; then
    # Derive output name
    base_name=$(basename "${md%.md}")
    output_file="$BUILD_DIR/${base_name}.docx"
    echo "Converting $md -> $output_file"
    pandoc "$md" -o "$output_file"
  fi
done

echo "All documents converted. Word docs are in the '$BUILD_DIR' directory."