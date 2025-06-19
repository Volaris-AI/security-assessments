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

## Creating a New Security Assessment

To create a new security assessment document for a product or service, follow these steps:

1. Copy the assessment template:
   ```bash
   cp docs/template.md docs/<product-name>.md
   ```
2. Open `docs/<product-name>.md` and complete each section:
   - **Executive Summary:** Add Vendor Name, Product/Service, Product Summary, Assessment Date, Prepared By, and Purpose.
   - **Vendor Overview:** Document product tiers, included security features, and vendor/product details.
   - **Sections 3–9:** Fill out Intellectual Property Protection, Data Security & Encryption, Data Lifecycle & Privacy, AI & Model Training Practices, Security Certifications & Compliance, Risk Management & Governance, and Incident Response & Disclosure.
   - **Questions for Vendor:** Provide answers or mark “No findings” and reference evidence URLs.
3. Gather evidence and documentation:
   - Use the `exa-search` tool to search the web for official vendor security pages, whitepapers, or FAQs.
   - Include URLs and attach screenshots or configuration snippets as needed.
4. Commit your changes:
   ```bash
   git add docs/<product-name>.md
   git commit -m "Add security assessment for <product-name>"
   ```
5. (Optional) Convert to Word format using Pandoc:
   ```bash
   pandoc docs/<product-name>.md -o docs/<product-name>.docx
   ```
6. Push to the repository and create a pull request for review.

---