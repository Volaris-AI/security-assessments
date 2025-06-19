# Security Governance Report: Devin AI

*Based on the Security Governance Report Template*

---

## 1. Executive Summary

- **Vendor Name:** Cognition, Inc.
- **Product/Service:** Devin AI (Developer and Enterprise)
- **Product Summary:** Devin AI provides AI-powered coding assistance and automation—available as a web app, CLI, and IDE integrations. Individual developers use the hosted Developer service; enterprises deploy Devin in a VPC for full data isolation and compliance.
- **Assessment Date:** 2025-06-18
- **Prepared By:** [Your Name]
- **Purpose of Assessment:** Evaluate Devin AI’s security governance for both Developer (hosted) and Enterprise (private deployment) offerings.

This report reviews controls for data encryption, access management, deployment models, compliance, AI training, and incident response.

---

## 2. Vendor Overview

### 2.1 Product Tiers & Feature Availability

- **Developer (app.devin.ai)**
  - Encryption at Rest: AES-256 (hosted)
  - Encryption in Transit: TLS 1.2+
  - Data Used for Training: No (opt-out enforced)
  - IP Protection: Standard Terms apply
  - Enterprise Controls: User login via Cognition SSO; per-user audit logs via DataDog; shared cloud service with tenants isolated via IAM
  - Evidence URLs:
    - https://docs.devin.ai/security

- **Enterprise (VPC)**
  - Encryption at Rest: AES-256 (customer KMS)
  - Encryption in Transit: TLS 1.2+
  - Data Used for Training: No
  - IP Protection: Enterprise Terms apply
  - Enterprise Controls: VPC deployment, AWS IAM Identity Center SSO, centralized audit logs, configurable retention and data residency
  - Evidence URLs:
    - https://docs.devin.ai/enterprise/overview
    - https://docs.devin.ai/enterprise/security/enterprise-security

### 2.2 Product Details

- **Product/Service Description:** AI coding assistant offering code completion, generation, refactoring, test creation, and CI/CD automation.
- **Deployment Models:**
  - **Developer:** Hosted SaaS on AWS with shared tenancy.
  - **Enterprise:** Private VPC deployment in AWS/Azure with dedicated infrastructure.
- **Geographical Locations:** AWS regions (us-east-1, us-west-2), Azure regions on request.
- **Key Stakeholders:** Cognition Security, DevOps, Engineering, Compliance teams.

### 2.3 Offerings & Interfaces

Devin is accessible via:

#### A. Web App & Chat Interface

- **URL:** https://app.devin.ai
- **Features:** Chat-based coding assistance, project dashboards, secrets management UI.
- **Auth:** Cognition SSO or OAuth; CLI tokens stored in secure local vault.

#### B. CLI & IDE Integrations

- **CLI:** `devin` command for chat, code generation, and automation.
- **IDE Plugins:** TBD; CLI supports VS Code, JetBrains via LSP.
- **Features:** Inline completions, file scaffolding, security scans via `/scan` command.

*Use web UI for project management and chat; CLI/IDE for in-context coding workflows.*

---

## 3. Intellectual Property Protection

- **Ownership & Licensing:**
  - Hosted code and AI outputs licensed per-use; user code remains customer-owned.
  - Enterprise agreements include IP indemnification clauses.
- **IP Protection Measures:**
  - Terms of Service and Enterprise Agreement define IP rights and data usage restrictions.

Evidence:
- URL: https://docs.devin.ai/privacy

---

## 4. Data Security & Encryption

### 4.1 Encryption at Rest

- **Developer:** AWS-managed S3/EBS with AES-256.
- **Enterprise:** Customer-managed KMS keys for all persistent storage.

Evidence:
- URL: https://docs.devin.ai/security ("encrypted at rest")

### 4.2 Encryption in Transit

- All traffic via TLS 1.2+ with HSTS.
- Certificates managed via AWS Certificate Manager or customer PKI.

Evidence:
- URL: https://docs.devin.ai/security ("encrypted in transit")

### 4.3 Access Control & Auditing

- MFA enforced via Cognition SSO.
- Enterprise IAM Identity Center for SSO and RBAC.
- Audit logs (API calls, chat transcripts) streamed to DataDog/CloudWatch; retention configurable.

Evidence:
- URL: https://docs.devin.ai/enterprise/security/enterprise-security (SSO, logging)

---

## 5. Data Lifecycle & Privacy

- **Data Retention:** Default 30-day retention for transcripts and logs; enterprise can configure via admin console.
- **Deletion & Purging:** Users can delete conversations; enterprise can purge data via API or console.
- **Data Residency:** Enterprise VPC supports region selection; Developer data processed in US regions.
- **DSAR Process:** Privacy policy provides DSAR contact; compliance within 30 days.

Evidence:
- URL: https://docs.devin.ai/privacy

---

## 6. AI & Model Training Practices

- Devin does not use customer code or chat for model retraining by default.
- Enterprise can opt-in to anonymized telemetry for product improvement.
- Logging pseudonymization enforced for all data used in analytics.

Evidence:
- URL: https://docs.devin.ai/privacy (Data usage section)

---

## 7. Security Certifications & Compliance

- **SOC 2 Type II** (both Developer and Enterprise deployments).
- **ISO 27001** certified.
- **GDPR, CCPA** compliant.

Evidence:
- URL: https://docs.devin.ai/security (Compliance summary)

---

## 8. Risk Management & Governance

- Risk framework: NIST CSF with quarterly reviews.
- Threat modeling integrated into SDLC; annual pen tests by third-party.
- Vulnerability management with CVE tracking; critical patches in 48 hrs.

Evidence:
- URL: https://docs.devin.ai/security#threat-modeling

---

## 9. Incident Response & Disclosure

- IR plan aligned to NIST SP 800-61.
- 24/7 SOC monitoring with PagerDuty alerts.
- Customer notifications within 24 hrs of confirmed breach; public incident reports.

Evidence:
- URL: https://docs.devin.ai/security#incident-response

---

## 10. Questions & Responses

1. **To what extent is conversation data encrypted at rest?**
   - AES-256 at rest (Developer managed, Enterprise customer KMS). (Evidence: 4.1)

2. **To what extent is access to conversation data logged and auditable?**
   - All transcripts and API calls logged; retained per policy; accessible via DataDog/CloudWatch. (Evidence: 4.3)

3. **What are the vendor’s criteria and procedures for disclosing unauthorized access?**
   - IR plan triggers immediate investigation; customer notifications within 24 hrs; post-mortem published. (Evidence: 9)

4. **Does the vendor have security/compliance certifications? Scope?**
   - SOC 2 Type II, ISO 27001, GDPR/CCPA; covers both hosted and private deployments. (Evidence: 7)

5. **Can conversation data be deleted upon request? How?**
   - Yes; users delete via UI, Enterprise via API; purges completed in 30 days. (Evidence: 5)

6. **To what extent is conversation data used to train models?**
   - No customer data used for retraining by default; optional opt-in anonymized telemetry for Enterprise. (Evidence: 6)

7. **What framework addresses AI-related risks?**
   - NIST CSF, internal AI risk guidelines, threat modeling, red teaming. (Evidence: 8)

---

*End of Report*