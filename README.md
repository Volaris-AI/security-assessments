# Security Assessments

This repository contains documentation for security assessments, maintained in Markdown format. Keeping content in Markdown enables:

- Easy collaboration and versioning in Git.
- AI-assisted editing, proofreading, and content generation.

## Workflow

1. Write and maintain all assessment documents in `./docs` as Markdown files (`.md`).
2. Use AI tools to assist with:
   - Grammar and style improvements.
   - Content validation and suggestions.
   - Automated templating and report generation.
3. Convert finalized Markdown documents to Word (`.docx`) format using [Pandoc](https://pandoc.org/):

   ```bash
   pandoc docs/<filename>.md -o docs/<filename>.docx
   ```

4. Distribute the `.docx` files to stakeholders for review or consumption.

---

*Maintained by the Security Assessments team.*