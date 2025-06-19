# Security Governance Report: Jiminny Conversation Intelligence Platform

*Based on the Security Governance Report Template*

---

## 1. Executive Summary

- **Vendor Name:** Jiminny, Inc.
- **Product/Service:** Jiminny Conversation Intelligence Platform
- **Product Summary:** A SaaS platform that captures, transcribes, and analyzes customer and prospect interactions (calls, video, email) to generate AI-driven insights for sales, customer success, and other teams.
- **Assessment Date:** 2025-06-19
- **Prepared By:** Ian Reay
- **Purpose of Assessment:** Evaluate security governance controls, data protection, compliance posture, and AI practices of Jiminny to support enterprise adoption.

High-level findings:
- Enterprise-grade encryption in transit and at rest (AES-256/TLS)
- SOC 2 Type II compliance; annual third-party pen tests; continuous SAST/DAST
- GDPR, CCPA, EU-US/UK-US/Swiss DPF adherence
- Role-based access, SAML SSO, multi-tenant AWS deployment with DR and backups
- Data processor model with customer control over data

---

## 2. Vendor Overview

### 2.1 Product Capabilities & Feature Availability

Jiminny is a single-tier SaaS offering. Key security and governance features include:

- **Encryption at Rest:** AES-256 by default for recordings and stored transcripts (<https://jiminny.com/platform/security>)
- **Encryption in Transit:** TLS 1.2+ for all client-server communications (<https://jiminny.com/privacy-policy>)
- **Data Used for Training:** Aggregated, anonymized usage data may be used for product improvement; customer-identifiable data processed only per customer instructions.
- **IP Protection:** Customers retain ownership of their Customer Data; Jiminny acts as processor per DPA (<https://jiminny.com/dpa>)
- **Enterprise Controls:**
  - SAML 2.0 SSO with optional 2FA (Google/Microsoft)
  - Granular roles & permissions for recordings, configurations, user management
  - Audit logging of user actions, recordings, data exports
  - DR across 3 AWS AZs; annual DR testing
- **Evidence URLs:**
  - <https://jiminny.com/platform/security>
  - <https://jiminny.com/privacy-policy>
  - <https://jiminny.com/trust-center>

### 2.2 Product Details

- **Product/Service Description:** Cloud-native conversation intelligence for sales and CS teams, with AI-powered transcription, sentiment analysis, call scoring, deal insights, and CRM integration.
- **Deployment Model:** Multi-tenant SaaS on AWS (us-east-2 & eu-west-1)
- **Geographical Locations:** USA (Ohio), Ireland; region selection by customer
- **Key Stakeholders:** Product Engineering, Security, Compliance, Customer Success

---

## 3. Intellectual Property Protection

- **Ownership & Licensing:** Proprietary platform; customers own all recordings and transcripts. DPA clarifies data-processor relationship.
- **IP Protection Measures:**
  - Customer Data processed strictly per written instructions
  - Data Processing Addendum binding sub-processors under SCCs
  - Confidentiality agreements and employee training
- **Evidence:** <https://jiminny.com/dpa>

---

## 4. Data Security & Encryption

### 4.1 Encryption at Rest

- AES-256 default on all stored data: recordings, transcripts, metadata.
- Keys managed by AWS KMS with automatic rotation.
- **Evidence:** Platform security page

### 4.2 Encryption in Transit

- All API, UI, and streaming traffic secured via TLS 1.2+.
- Certificates managed by AWS Certificate Manager.
- **Evidence:** Privacy policy

### 4.3 Access Control & Auditing

- Identity: SAML 2.0 SSO, OAuth 2.0 integrations (Google, Microsoft).
- Authorization: Role-based access controls for recordings, downloads, admin functions.
- Auditing: Detailed event logs via AWS CloudTrail and application logs; 7-day log retention with export option.
- **Evidence:** <https://jiminny.com/platform/security>

---

## 5. Data Lifecycle & Privacy

- **Data Retention Policy:** As instructed by customer; default retention configurable per account.
- **Deletion & Purging:** Self-service deletion via UI/API; backend purge within 30 days.
- **Data Residency Controls:** Customers choose US or EU region.
- **Data Subject Requests:** Handled per GDPR/CCPA; customers direct DSARs to their account admins.
- **Evidence:** Privacy Notice; DPA

---

## 6. AI & Model Training Practices

- Jiminny employs AI for transcription, sentiment analysis, call scoring, and deal insights.
- Customer-identifiable data is processed only under DPA instructions; no customer-personal data sold or shared.
- Aggregated and pseudonymized data used for model improvement; no sensitive PII used in training.
- **Evidence:** Privacy Notice (data usage sections)

---

## 7. Security Certifications & Compliance

- **SOC 2 Type II** (annual audit by A-LIGN)
- **GDPR** (data processor obligations; EU-US, UK-US, Swiss DPF)
- **CCPA/CPRA compliance** (no sale of personal data)
- **Penetration Testing:** Annual third-party pen tests of APIs, web UI
- **Continuous Scanning:** SAST, DAST, container scans, vulnerability management

**Evidence:** <https://jiminny.com/platform/security>; <https://trust.jiminny.com>

---

## 8. Risk Management & Governance

- Formal Information Security Program (policies, training, incident response)
- Annual security awareness training; background checks for personnel
- DR/BCP plans with annual tests; AWS multi-AZ deployment
- Regular vulnerability assessments; automated monitoring and alerting

---

## 9. Incident Response & Disclosure

- Documented IR playbooks aligned with NIST SP 800-61
- Security incident procedures define roles, escalation, customer notifications
- Breach notification: within 72 hours to customers and regulators as required
- **Evidence:** DPA Annex II (security incident procedures)

---

## 10. Questions for Vendor

1. Please confirm default and maximum retention periods for recordings and logs.
2. Are there options for Bring Your Own Key (BYOK) or Customer-Managed KMS?
3. Can audit logs be exported to customer-owned SIEM (e.g., Splunk, Sumo Logic)?
4. What is the scope of annual penetration tests (external, internal, API, network)?
5. How is data anonymization enforced for AI model training? Are model weights accessible?
6. Do you hold ISO 27001 or other certifications beyond SOC 2 Type II?
7. Can customers request deletion of all data under DSAR, and what is the SLA?

*End of Report*
