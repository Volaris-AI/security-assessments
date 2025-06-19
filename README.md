# security-assessments

This repository contains security assessment documentation and related tooling.

## Documentation File Naming Convention

All assessment reports must follow the naming pattern:

  `<vendor>-<product-slug>.md`

where:
- **`<vendor>`** is the lowercase name of the company or project (e.g., `aws`, `openai`, `anthropic`).
- **`<product-slug>`** is a kebab-case (dash-separated) identifier for the product or service (e.g., `q-developer`, `claude-code`, `security-assessments` if needed for general templates).
- File extension `.md` indicates a Markdown report.

Examples:

  docs/amazon-q-developer.md  
  docs/anthropic-claude-code.md  
  docs/github-copilot.md  

Ensure filenames are all lowercase and contain only dashes, alphanumeric characters, and no spaces.

## Prerequisites

- Bash (for scripts)
- Git
- Pandoc (for document conversion)
- Curl (used by link-check script)

## Testing Documentation Links

To validate all Markdown links for broken URLs locally, run:

```bash
./scripts/check-links.sh
```

This checks staged or changed Markdown files for HTTP/HTTPS links and will exit non-zero if any links are broken.

## Building Word Documents

To convert all Markdown files in `docs/` into Word (.docx) documents:

```bash
./scripts/build-docs.sh
```

The generated `.docx` files will be placed in the `build/` directory.

## Git Hooks & CI

- **Pre-push Hook**: `.git/hooks/pre-push` automatically runs `check-links.sh` before every push to catch broken links early.
- **GitHub Actions**: `.github/workflows/link-check.yml` runs link validation on `push` and `pull_request` events.

## Pushing Changes

After updating docs or scripts, commit and push:

```bash
git add docs scripts .github build README.md
git commit -m "Update docs, add build and test instructions"
git push origin main
```