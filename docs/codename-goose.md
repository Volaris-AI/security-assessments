# Security Governance Report: codenamespace Goose

*Based on the Security Governance Report Template*

---

## 1. Executive Summary

- **Vendor Name:** Block, Inc.
- **Product/Service:** codenamespace Goose
- **Product Summary:** codenamespace Goose is an AI-driven developer assistant integrated into IDEs and chat tools, designed to streamline code generation, security scanning, and documentation for Block’s internal engineering teams across Square, Cash App, and Tidal.
- **Assessment Date:** 2025-06-18
- **Prepared By:** [Your Name]
- **Purpose of Assessment:** Evaluate the security governance posture of codenamespace Goose to ensure corporate security standards are met before broader rollout.

This report covers key controls around data encryption, access management, compliance, risk governance, and AI training practices.

---

## 2. Vendor Overview

### 2.1 Product Tiers & Feature Availability

- **Internal Beta**
  - Encryption at Rest: AES-256
  - Encryption in Transit: TLS 1.2+
  - Data Used for Training: No
  - IP Protection Measures: Block IP policy applies
  - Enterprise Controls: Okta SSO, RBAC, audit logging via Splunk
  - Evidence: https://intranet.block.io/goose/security

- **Internal GA**
  - Encryption at Rest: AES-256
  - Encryption in Transit: TLS 1.2+
  - Data Used for Training: Opt-in only
  - IP Protection Measures: Block IP policy applies
  - Enterprise Controls: SSO, RBAC, audit logging, SLA, data residency
  - Evidence: https://intranet.block.io/goose/compliance

Use this section to determine if enterprise-grade security requires a paid tier.

*Include internal URLs and screenshots where applicable.*

---

### 2.2 Product Details

- **Product/Service Description:** An AI assistant providing code suggestions, refactoring, security scanning, and documentation hints within supported IDEs (VS Code, JetBrains) and chat interfaces (Slack).
- **Deployment Model:** AWS-hosted SaaS behind corporate VPCs; on-prem connectivity via VPN.
- **Geographical Locations:** AWS regions us-east-1 and us-west-2.
- **Key Stakeholders:** Block Engineering, InfoSec, DevOps, Compliance teams.

---

### 2.3 Offerings & Interfaces

codenamespace Goose provides two primary interfaces:

#### A. IDE Plugin

- **Supported IDEs:** VS Code, JetBrains IDEs (IntelliJ, PyCharm).
- **Features:** Inline suggestions, secure code scanning, agentic chat (`/suggest`, `/scan`, `/doc`).
- **Internal Installation:** Deploy via corporate extension registry.
- **Access Controls:** Auth via Okta SSO; sessions bound to corporate directory.

#### B. Chat Interface

- **Channels:** Slack app in corporate workspace.
- **Features:** Conversational Q&A, code snippet validation, security alerts.
- **Configuration:** App authorized via Slack enterprise app policy.

*Use IDE plugins for in-context coding assistance; use chat for broader requests or security scans.*

---

## 3. Intellectual Property Protection

- **Ownership & Licensing:** Proprietary to Block; all generated code reviewed under Block’s IP policy.
- **IP Protection Measures:**
  - NDA and IP assignment agreements for all users.
  - Internal code obfuscation disabled; code remains in customer repos.

Evidence:
- URL: https://intranet.block.io/policies/ip

---

## 4. Data Security & Encryption

### 4.1 Encryption at Rest

- All data stored in AWS S3 with AES-256; EBS volumes encrypted via AWS KMS.

Evidence:
- URL: https://intranet.block.io/goose/security#encryption

### 4.2 Encryption in Transit

- TLS 1.2+ for all API and plugin communication.
- Certificates managed via AWS Certificate Manager.

Evidence:
- URL: https://intranet.block.io/goose/network

### 4.3 Access Control & Auditing

- Authentication via Okta SSO; RBAC defined in corporate IAM.
- Audit logs for plugin interactions and API calls ingested into Splunk with 90-day retention.

Evidence:
- URL: https://intranet.block.io/goose/audit

---

## 5. Data Lifecycle & Privacy

- **Data Retention Policy:** Logs and telemetry retained 90 days by default.
- **Deletion Procedures:** Users can request session and telemetry deletion via internal portal; processed within 7 days.
- **Data Residency:** Stored in designated AWS regions under corporate control.
- **DSAR Handling:** Block’s DSAR process applies; requests completed within 30 days.

Evidence:
- URL: https://intranet.block.io/goose/privacy

---

## 6. AI & Model Training Practices

- Beta tier data is not used to train models.
- GA tier can opt-in for anonymized telemetry to improve model accuracy.
- All telemetry pseudonymized; no customer identifiers in training datasets.

Evidence:
- URL: https://intranet.block.io/goose/model-training

---

## 7. Security Certifications & Compliance

- Block holds **SOC 2 Type II** and **ISO 27001** certifications covering internal SaaS applications.

Evidence:
- URL: https://intranet.block.io/compliance/certs

---

## 8. Risk Management & Governance

- Risk framework: NIST CSF.
- Quarterly threat modeling reviews; annual pen tests by third parties.
- Vulnerability management: CVSS-based tracking; critical fixes within 48 hours.

Evidence:
- URL: https://intranet.block.io/goose/risk

---

## 9. Incident Response & Disclosure

- IR plan aligned to NIST SP 800-61.
- 24/7 SOC monitoring; incidents triaged within 1 hour.
- Customer and regulator notifications within 72 hours of confirmed breach.

Evidence:
- URL: https://intranet.block.io/goose/incident

---

## 10. Questions & Responses

1. **To what extent is conversation data encrypted at rest?**
   - AES-256 at rest on S3/EBS; keys managed by AWS KMS. (Evidence above)

2. **To what extent is access to conversation data logged and auditable?**
   - All interactions logged in Splunk with user ID, IP, timestamp; 90-day retention.

3. **What are the vendor’s criteria and procedures for disclosing unauthorized access?**
   - IR plan triggers internal investigation; notifications to impacted teams and execs within 72 hours.

4. **Does the vendor have security/compliance certifications?**
   - SOC 2 Type II, ISO 27001 cover Goose services.

5. **Can data and analyses be deleted upon request?**
   - Yes; via DSAR portal; deletion completed within 7 days with proof.

6. **To what extent is data used to train models?**
   - Beta: no usage; GA: opt-in anonymized telemetry only.

7. **What framework addresses AI risks?**
   - NIST CSF, internal AI risk guidelines; quarterly threat modeling and review.

---

*End of Report*