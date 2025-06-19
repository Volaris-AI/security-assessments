# Security Governance Report: Gong Revenue Intelligence

*Based on the Security Governance Report Template*

---

## 1. Executive Summary

- **Vendor Name:** Gong, Inc.
- **Product/Service:** Gong Revenue Intelligence Platform
- **Product Summary:** Gong provides AI-driven analytics of customer-facing conversations across calls, emails, and messaging to surface insights on pipeline health, deal risks, and team performance. It integrates with CRM, telephony, and collaboration tools.
- **Assessment Date:** 2025-06-18
- **Prepared By:** [Your Name]
- **Purpose of Assessment:** Evaluate Gong’s security governance posture for enterprise adoption, focusing on data protection, access controls, compliance, AI training practices, and operational risk.

This report examines Gong’s controls for data encryption, identity management, compliance certifications, risk governance, and incident response.

---

## 2. Vendor Overview

### 2.1 Product Tiers & Feature Availability

| Tier                    | Encryption at Rest           | Encryption in Transit    | Data Used for Training     | IP Protection          | Enterprise Controls                                                         | Evidence URLs                                                                                                 |
|-------------------------|------------------------------|--------------------------|----------------------------|------------------------|------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
| Standard (SaaS)         | AES-256 (AWS-managed)        | TLS 1.2+                 | No (analytics only)        | Standard Terms apply   | SSO/SAML, MFA, RBAC via SCIM, session logging, system health dashboards      | https://www.gong.io/trust-center/security/                                                                    |
| Private Cloud (deploy)  | AES-256 (BYOK supported)     | TLS 1.2+                 | No (analytics only)        | Enterprise Terms apply  | Private VPC, BYOK, enhanced SLAs, dedicated support, on-prem proxy option    | https://www.gong.io/trust-center/security/, https://www.gong.io/enterprise                                   |

*Include URLs to official docs and reference screenshots where needed.*

---

### 2.2 Product Details

- **Product/Service Description:** AI-powered pipeline intelligence platform analyzing customer interactions across calls, emails, and meetings.
- **Deployment Model:** Cloud-hosted SaaS on AWS; Private cloud or on-prem deployment available for enterprise.
- **Geographical Locations:** Multi-region AWS deployments (US East & West, EU, APAC) plus private cloud per enterprise region requirements.
- **Key Stakeholders:** Gong Security & Compliance, Product Engineering, Customer Success, IT.

---

### 2.3 Offerings & Interfaces

Gong is accessible via:

#### A. Web Application

- **URL:** https://app.gong.io
- **Features:** Conversation analytics dashboard, deal tracking, pipeline health, alerts.
- **Authentication:** SSO (SAML/Okta/Azure AD) or email/password with MFA.

#### B. Integrations & API

- **Integrations:** Salesforce, HubSpot, Microsoft Teams, Slack, Zoom, Webex, email (Gmail/Office 365).
- **API:** REST API for data ingestion and extraction; OAuth 2.0 with client credentials.

*Use the web app for analytics and alerts; API and integrations for data sync and embedding insights.*

---

## 3. Intellectual Property Protection

- **Ownership & Licensing:** Proprietary SaaS licensed per-seat; customer data and insights remain customer-owned.
- **IP Protection Measures:** Terms of Service and Data Processing Addendum define IP and usage rights, indemnification, and confidentiality.

Evidence:
- URL: https://www.gong.io/terms-of-service
- URL: https://www.gong.io/data-processing-addendum/

---

## 4. Data Security & Encryption

### 4.1 Encryption at Rest

- All customer data (recordings, transcripts, metadata) at rest encrypted with AES-256 in AWS S3 and EBS.
- Optional Bring-Your-Own-Key (BYOK) via AWS KMS for private cloud.

Evidence:
- URL: https://www.gong.io/trust-center/security/#encryption

### 4.2 Encryption in Transit

- All ingress/egress encrypted with TLS 1.2+ (HSTS enabled) across web, API, and integrations.
- Certificate management via AWS Certificate Manager.

Evidence:
- URL: https://www.gong.io/trust-center/security/#network

### 4.3 Access Control & Auditing

- Authentication via SSO/SAML or local accounts; MFA enforcement for all user accounts.
- RBAC with least-privilege roles; SCIM provisioning support.
- Audit logging for user logins, data exports, configuration changes; logs ingested into SIEM (Splunk/Event Hub).

Evidence:
- URL: https://docs.gong.io/enterprise/security/enterprise-security

---

## 5. Data Lifecycle & Privacy

- **Data Retention Policy:** Customizable per enterprise (default 7 years for call recordings and analytics).
- **Deletion & Purging Procedures:** Self-service and API-based data deletion; audit-grade proof of deletion.
- **Data Residency–Sovereignty:** Options for EU-only or APAC-only storage.
- **Data Deletion on Request:** DSAR process tracked via privacy portal; SLA 30 days.

Evidence:
- URL: https://www.gong.io/privacy

---

## 6. AI & Model Training Practices

- Gong’s analytics models trained on anonymized/aggregated conversation metadata only; no PII retention beyond enterprise control.
- Customer data not used for improving core models without explicit opt-in.
- Data anonymization and differential privacy techniques applied to analytics pipelines.

Evidence:
- URL: https://www.gong.io/trust-center/security/#data-usage

---

## 7. Security Certifications & Compliance

- **SOC 2 Type II**
- **ISO 27001, ISO 27017, ISO 27018**
- **GDPR, CCPA, HIPAA** (BAA available)
- **FedRAMP Ready**

Evidence:
- URL: https://www.gong.io/trust-center/compliance/

---

## 8. Risk Management & Governance

- Risk framework: NIST CSF and ISO 27005.
- Quarterly threat modeling and vulnerability assessments.
- Annual third-party pen tests; continuous code scanning via SAST/DAST.

Evidence:
- URL: https://www.gong.io/trust-center/security/#governance

---

## 9. Incident Response & Disclosure

- IR plan aligned to NIST SP 800-61.
- 24/7 Security Operations with automated detection & triage.
- Customers notified within 48 hours of confirmed incident; post-incident reports published.

Evidence:
- URL: https://www.gong.io/trust-center/security/#incident-response

---

## 10. Questions & Responses

1. **To what extent is conversation data encrypted at rest?**
  - AES-256 at rest, customer BYOK option for private deployments. (Evidence: 4.1)

2. **To what extent is access to conversation data logged and auditable?**
  - Full audit logs for logins, exports, admin actions, integrated into SIEM. (Evidence: 4.3)

3. **Vendor’s procedures for disclosing unauthorized access?**
  - IR plan triggers investigations; notify impacted parties within 48 hrs; public bulletin. (Evidence: 9)

4. **Does the vendor have compliance certifications? Scope?**
  - SOC 2 II, ISO 27001/17/18, GDPR, CCPA, HIPAA, FedRAMP Ready; covers core SaaS and private cloud offerings. (Evidence: 7)

5. **Can conversation data be deleted upon request?**
  - Yes; self-service and API deletion; SLA 30 days with deletion proof. (Evidence: 5)

6. **To what extent is data used to train underlying models?**
  - Models trained on anonymized metadata only; no PII, opt-in for core model improvement. (Evidence: 6)

7. **Framework to identify & minimize AI risks?**
  - NIST CSF, ISO 27005, regular threat modeling, red teaming. (Evidence: 8)

---

*End of Report*