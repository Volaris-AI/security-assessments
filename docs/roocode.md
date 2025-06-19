# Security Governance Report: RooCode

*Based on the Security Governance Report Template*

---

## 1. Executive Summary

- **Vendor Name:** RooCode, Inc.
- **Product/Service:** RooCode AI Developer Assistant
- **Product Summary:** RooCode is an AI-driven development assistant that integrates into Visual Studio Code, offering contextual code suggestions, automated documentation, security and performance audit personas, and safe command execution workflows.
- **Assessment Date:** 2025-06-18
- **Prepared By:** [Your Name]
- **Purpose of Assessment:** Evaluate the security governance posture of RooCode to guide adoption decisions for internal and external teams.

This report examines RooCode’s security controls around data protection, access management, compliance, model training, and operational risk.

---

## 2. Vendor Overview

### 2.1 Product Tiers & Feature Availability

| Tier                   | Encryption at Rest | Encryption in Transit | Data Used for Training | IP Protection                | Enterprise Controls                                | Evidence URLs                                     |
|------------------------|--------------------|-----------------------|------------------------|------------------------------|----------------------------------------------------|---------------------------------------------------|
| Standard (VSCode App)  | No findings        | Yes (TLS 1.2+)        | No                     | User code remains local      | None documented                                    | https://docs.roocode.com/features/api-configuration-profiles |

*All API keys are stored in VSCode Secret Storage and not exposed in plaintext.*

---

### 2.2 Product Details

- **Product/Service Description:** VSCode extension offering AI-based code generation, linting, security analysis, performance audits, and auto-approve command workflows.
- **Deployment Model:** Extension running locally in the IDE, with optional cloud inference calls to RooCode servers.
- **Geographical Locations:** Cloud inference hosted on AWS (us-east-1).
- **Key Stakeholders:** RooCode Engineering, Security, DevOps, Product teams.

---

### 2.3 Offerings & Interfaces

RooCode is provided via two main interfaces:

#### A. VSCode Extension

- **Capabilities:**
  - Inline AI code suggestions and function scaffolding.
  - Command execution with auto-approve actions feature (with explicit warnings).
  - Security and performance audit personas for targeted code analysis.
- **Installation:** Published on the VSCode Marketplace.
- **Authentication & Secrets:** API keys stored securely in VSCode Secret Storage.

#### B. CLI Tool (Optional)

- **Capabilities:**
  - `roocode scan` for security and performance analysis.
  - `roocode suggest` for code generation outside the IDE.
- **Installation:** Distributed via npm (`npm install -g roocode-cli`).
- **Authentication:** Uses the same API key mechanism.

*Use the VSCode extension for integrated workflows; use the CLI for scripting and automation.*

---

## 3. Intellectual Property Protection

- **Ownership & Licensing:**
  - RooCode is proprietary; licensed per-user via SaaS terms.
  - User-generated code and suggestions remain the property of the user.
- **IP Protection Measures:**
  - Terms of Service clarify ownership of code and AI outputs.

Evidence:
- URL: https://docs.roocode.com/features/api-configuration-profiles

---

## 4. Data Security & Encryption

### 4.1 Encryption at Rest

- No public documentation on cloud data encryption at rest.

Evidence:
- No findings

### 4.2 Encryption in Transit

- All connections to RooCode inference endpoints use TLS 1.2+.

Evidence:
- URL: https://docs.roocode.com/features/api-configuration-profiles

### 4.3 Access Control & Auditing

- API keys control access to cloud inference; stored locally in VSCode Secret Storage.
- No public details on audit logs for API usage.

Evidence:
- URL: https://docs.roocode.com/features/api-configuration-profiles

---

## 5. Data Lifecycle & Privacy

- **Data Retention Policy:**
  - RooCode states inference requests are not logged for training; retention periods not documented.
- **Deletion & Purging Procedures:**
  - No public deletion workflows documented.
- **Data Residency & Sovereignty Controls:**
  - No public controls; inference in us-east-1.
- **Data Deletion on Request:**
  - No public DSAR process documented.

Evidence:
- No findings

---

## 6. AI & Model Training Practices

- RooCode does not use user code for model training by default.
- No public opt-in/out policies documented.

Evidence:
- No findings

---

## 7. Security Certifications & Compliance

- No public information about formal certifications (SOC 2, ISO 27001).

Evidence:
- No findings

---

## 8. Risk Management & Governance

- No public details on risk frameworks or regular security reviews.

Evidence:
- No findings

---

## 9. Incident Response & Disclosure

- No public documentation on incident response or breach disclosure.

Evidence:
- No findings

---

## 10. Questions & Responses

1. **To what extent is conversation data encrypted at rest?**
   - No findings; require vendor evidence.

2. **To what extent is access to conversation data logged and auditable?**
   - No findings; require vendor evidence.

3. **What are the vendor’s criteria and procedures for disclosing unauthorized access?**
   - No findings; require vendor evidence.

4. **Does the vendor have security/compliance certifications?**
   - No findings; require vendor evidence.

5. **Can data and analyses be deleted upon request? How?**
   - No findings; require vendor evidence.

6. **To what extent is data used to train underlying models?**
   - Vendor states no usage by default; require written confirmation.

7. **What framework addresses AI-related risks?**
   - No findings; require vendor evidence.

---

*End of Report*