# Security Governance Report: Fireflies.ai Meeting Intelligence Platform

*Based on the Security Governance Report Template*

---

## 1. Executive Summary

- **Vendor Name:** Fireflies.ai
- **Product/Service:** Fireflies Meeting Intelligence Platform
- **Product Summary:** A SaaS platform that automatically records, transcribes, summarizes, and analyzes meeting audio/video across conferencing and calendar integrations.
- **Assessment Date:** 2025-06-19
- **Prepared By:** Ian Reay
- **Purpose of Assessment:** Review Fireflies’ security governance, data protection practices, compliance certifications, and AI training policies to inform enterprise adoption.

Key findings:
- Enterprise-grade encryption (AES-256 at rest; TLS 1.2+ in transit)
- Data ownership and private storage options with 0-day vendor retention
- Compliance: SOC 2 Type II, GDPR, HIPAA BAA for Enterprise
- Advanced admin controls: SSO, Rules Engine, custom retention, Super Admin
- AWS & GCP infrastructure with DR, monitoring, and pen tests

---

## 2. Vendor Overview

### 2.1 Product Capabilities & Feature Availability

| Feature                         | Fireflies.ai  |
|---------------------------------|--------------:|
| Encryption at Rest              | AES-256       |
| Encryption in Transit           | TLS 1.2+      |
| Data Used for Training          | No (opt-in only) |
| Data Ownership                  | Customer owns all content |
| Private Storage (enterprise)    | Yes           |
| Data Retention Controls         | Custom per workspace (0-day vendor policy)
| Audit & Admin Controls          | Rules Engine, Super Admin, custom retention
| Single Sign-On                  | SAML/SSO      |
| Logging & Monitoring            | Uptime metrics, access logs
| Evidence URLs                   | <https://fireflies.ai/security>

### 2.2 Product Details

- **Product/Service Description:** Automated meeting notetaker and conversation intelligence tool for recording, transcribing, summarizing, and analyzing calls across Zoom, Teams, Google Meet, Webex, and more.
- **Deployment Model:** Cloud-native SaaS hosted on Google Cloud (app, recordings) and AWS VPC (database).
- **Geographic Regions:** US by default; EU Private Storage available for enterprise.
- **Key Stakeholders:** Product Engineering, Security & Compliance, Customer Success

---

## 3. Intellectual Property Protection

- **Ownership & Licensing:** Customers fully own meeting recordings, transcripts, and derived content. Fireflies acts as data custodian under Terms of Service and DPA.
- **IP Protection Measures:**
  - Data Processing Addendum binds Fireflies and sub-processors (transcription, LLM) to SCCs.
  - Business Associate Agreement (BAA) with OpenAI and other vendors prohibits training on PHI.
  - Confidentiality and non-disclosure agreements for employees.
- **Evidence:** <https://fireflies.ai/data_processing_terms.pdf>; <https://fireflies.ai/hipaa>

---

## 4. Data Security & Encryption

### 4.1 Encryption at Rest

- AES-256 encryption for all stored recordings, transcripts, and metadata.
- Customer-data buckets in GCP or AWS support BYO encryption keys for Private Storage.
- **Evidence:** <https://fireflies.ai/security>

### 4.2 Encryption in Transit

- All traffic secured via TLS 1.2+.
- WebSockets, APIs, and file uploads/downloads encrypted end-to-end.
- **Evidence:** <https://fireflies.ai/blog/security-at-fireflies-ai>

### 4.3 Access Control & Auditing

- SAML/SSO support for enterprise authentication.
- Role-based controls: Super Admin, workspace admins, user-level sharing settings.
- Rules Engine for automated workspace policies (meetings join/skip, retention).
- Uptime and incident logging via internal dashboards and alerts.
- **Evidence:** <https://fireflies.ai/security>

---

## 5. Data Lifecycle & Privacy

- **Data Retention Policy:** Default meeting data stored per workspace setting; metadata persisted up to 12 months; Private Storage allows customer-defined retention.
- **Data Deletion:** Immediate, irreversible deletion of individual meetings; account data purged within 30 days of cancellation.
- **Data Residency Controls:** Enterprise Private Storage in region of choice (US, EU).
- **Data Subject Rights:** Controlled via workspace settings; customers manage DSARs and deletion requests.
- **Evidence:** <https://fireflies.ai/blog/fireflies-private-storage>

---

## 6. AI & Model Training Practices

- Fireflies does **not** train core AI models on customer data by default.
- Vendors (speech-to-text, LLM) operate under 0-day retention policies; no transcripts or audio used for vendor model training.
- Base models trained on public corpora; customers may supply custom vocabulary or industry prompts for fine-tuning.
- Transcript edits feed back into workspace-level AI customization only.
- **Evidence:** <https://fireflies.ai/security> ("We don’t train on your data by default")

---

## 7. Security Certifications & Compliance

- **SOC 2 Type II** (annual audit by third party)
- **GDPR** certified; Data Privacy Frameworks compliance (US–EU, US–UK)
- **HIPAA** BAA for Protected Health Information (Enterprise)
- **Penetration Testing:** Annual third-party pen tests & continuous vulnerability scanning (SAST/DAST)
- **Standards:** Aligns to OWASP Top 10 in development, staging, production
- **Evidence:** <https://fireflies.ai/security>; <https://fireflies.ai/hipaa>

---

## 8. Risk Management & Governance

- Formal InfoSec program with policies, training, and incident response alignment to NIST SP 800-61.
- Employee background checks and annual security awareness training.
- Peer code reviews and secure SDLC integrating OWASP practices.
- DR/BCP across multi-cloud infrastructure; annual DR testing.

---

## 9. Incident Response & Disclosure

- Documented breach response playbooks; customer notification within 72 hours of detection.
- SLA for incident updates via support channels.
- Public Bug Bounty Program for vulnerability discovery and rewards.
- **Evidence:** <https://fireflies.ai/security> ("Bug Bounty Rewards Program")

---

## 10. Questions for Vendor

1. Can you provide default and maximum workspace retention periods for recordings and metadata?
2. Do you support customer-managed KMS keys for all storage tiers?
3. What SIEM/Splunk integrations are available for log export?
4. What is the scope and frequency of third-party penetration tests?
5. How are transcript edits isolated per workspace for AI customization?
6. Can you share your annual SOC 2 Type II and penetration test reports under NDA?
7. What is your average SLA for DSAR and data deletion requests?

*End of Report*