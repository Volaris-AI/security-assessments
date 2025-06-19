# Security Governance Report: Fathom Video (fathom.video)

Based on the Security Governance Report Template

---

## 1. Executive Summary

- **Vendor Name:** Fathom Video Inc.  
- **Product/Service:** Fathom AI Notetaker (“Fathom”)  
- **Product Summary:**  
  Fathom is an AI-powered call‐recording, transcription, and note‐taking service that integrates with video conferencing platforms (Zoom, Google Meet, Microsoft Teams) and calendar systems (Google/Outlook). It automatically records, transcribes, and summarizes meetings, allows tagging/highlighting, and syncs with CRM tools.  
- **Assessment Date:** 2025-06-19  
- **Prepared By:** [Your Name]  
- **Purpose of Assessment:**  
  Evaluate Fathom’s security governance, data protection, compliance posture, and risk management to inform adoption decisions.

---

## 2. Vendor Overview

### 2.1 Product Tiers & Feature Availability

- **Free Tier**  
  - Encryption at Rest: Yes (AES-256)  
  - Encryption in Transit: Yes (TLS 1.2+ / HTTPS)  
  - Data Used for AI Training: No (explicitly never trains on customer data)  
  - IP Protection: Users own call recordings and transcripts; no data sale to third parties  
  - Enterprise Controls: None  
  - Evidence URLs:  
    - Security FAQ: <https://help.fathom.video/en/articles/296512>  
    - Privacy Policy: <https://fathom.video/privacy>

- **Paid Individual & Team Edition**  
  - Encryption at Rest: AES-256  
  - Encryption in Transit: TLS 1.2+  
  - Data Used for AI Training: No  
  - IP Protection: Customer retains ownership; Fathom BAA/DPA available  
  - Enterprise Controls: SSO integration, SOC 2 Type II compliance, GDPR, CCPA, HIPAA support, DPA/BAA options  
  - Evidence URLs:  
    - Security Portal (access-controlled): <https://security.fathom.video/>  
    - “Is Fathom secure?”: <https://help.fathom.video/en/articles/296512>

### 2.2 Product Details

- **Deployment Model:** Multi-tenant SaaS, web-based dashboard, desktop client, and conferencing integrations.  
- **Hosting:** AWS (data stored in U.S. regions)  
- **Key Stakeholders:** Security, Engineering, Compliance, and Product teams at Fathom Video Inc.

---

## 3. Intellectual Property Protection

- **Ownership & Licensing:**  
  - Users retain full rights to recordings, transcripts, and summaries generated during their meetings.  
  - Fathom does not claim ownership; Terms of Service reserve rights to the platform itself.  
- **IP Protection Measures:**  
  - Proprietary algorithms and UI are protected under Fathom’s Terms of Service.  
  - Clear Feedback policy: users grant Fathom unrestricted rights to anonymized feedback only.  
- **Evidence URLs:**  
  - Terms of Service: <https://fathom.video/terms>  
  - Privacy Policy: <https://fathom.video/privacy>

---

## 4. Data Security & Encryption

### 4.1 Encryption at Rest

- All user data (recordings, transcripts, metadata) is encrypted with AES-256 at rest.  
- Regular backups with secure retention policies; data purged from backups within 7 days of deletion.

### 4.2 Encryption in Transit

- All communications use TLS 1.2+ (HTTPS).  
- Web clients and API endpoints enforce HSTS and secure cipher suites.

### 4.3 Access Control & Auditing

- Role-based access controls for Team Edition administrators; individual users limited to their own data.  
- SSO integration (SAML/Okta) and OAuth for calendar/CRM integrations.  
- Audit logs capture login events, recording start/stop, deletion actions, and administrative changes.  
- Password policies and optional 2FA for paid plans.

**Evidence URLs:**  
- Security Portal (policies listing Encryption Policy, Access Control Policy, Audit Logging): <https://security.fathom.video/>  
- “Is Fathom secure?”: <https://help.fathom.video/en/articles/296512>

---

## 5. Data Lifecycle & Privacy

- **Data Collection:** Audio/video streams, transcripts, user annotations, metadata (timestamps, participant IDs).  
- **Retention:**  
  - Default: User data retained until account deletion; backups retained up to 30 days post-deletion.  
  - Deletion: Account deletion triggers removal of recordings/transcripts; backups purged within 7 days.  
- **User Controls:**  
  - Account settings allow bulk deletion of recordings/transcripts.  
  - DPA and BAA for GDPR/HIPAA compliance; users can download or delete personal data.  
- **Evidence URLs:**  
  - Privacy Policy (Data Retention & User Rights): <https://fathom.video/privacy>  
  - “Is Fathom secure?” (deletion process): <https://help.fathom.video/en/articles/296512>

---

## 6. AI & Model Training Practices

- **AI Training:**  
  - Fathom and its sub-processors (OpenAI, Anthropic) **do not** train models on any customer data.  
- **Privacy by Design:**  
  - All AI processing for transcription/summarization occurs in secure, ephemeral containers; raw customer data is not persisted.  
- **Evidence URLs:**  
  - Security FAQ (“Do you train AI models on customer data?”): <https://help.fathom.video/en/articles/296512>

---

## 7. Security Certifications & Compliance

- **Certifications:**  
  - SOC 2 Type II (available via Security Portal).  
  - GDPR & CCPA compliance, with EU-U.S. Data Privacy Framework certification.  
  - HIPAA compliance with Business Associate Agreement for healthcare customers.  
- **Planned:** ISO 27001 (under evaluation)  
- **Evidence URLs:**  
  - Security Portal (SOC 2 Report): <https://security.fathom.video/>  
  - Privacy Policy (GPDR/CCPA/DPF details): <https://fathom.video/privacy>  
  - FAQ (HIPAA & GDPR): <https://help.fathom.video/en/articles/296512>

---

## 8. Risk Management & Governance

- **Policies & Standards:**  
  - Incident Response Policy, Business Continuity, Encryption Policy, Access Control Policy, documented in Security Portal.  
- **Testing & Monitoring:**  
  - Annual third-party penetration tests; continuous vulnerability scanning; real-time SIEM alerts.  
- **Employee Training:**  
  - Regular security awareness and phishing simulations; clear DR/disaster recovery plans.

---

## 9. Incident Response & Disclosure

- **Contact:** Report issues to <security@fathom.video>.  
- **Process:**  
  1. Triage and containment by InfoSec team.  
  2. Root cause analysis and remediation.  
  3. User notification within 72 hours for data breaches as required by law.  
- **Evidence URLs:**  
  - Security Portal (Incident Response Policy): <https://security.fathom.video/>

---

## 10. Questions for Vendor

1. Can you provide details on your AWS regional deployments (e.g., EU data residency) and any cross-region failover?  
2. What is your SLA and RTO/RPO for incident response and disaster recovery?  
3. Do you plan to obtain ISO 27001 certification?  
4. How granular are your audit logs (e.g., per-user, per-recording)?  
5. Can enterprise customers enforce IP allowlisting or VPC peering for data access?  
6. What is the cadence and scope of your penetration tests (e.g., internal/external, frequency)?  
7. How do you ensure BAA and DPA adherence for multi-tenant scenarios?

---

*End of Report*