# Security Governance Report: OpenAI ChatGPT

*Based on the Security Governance Report Template*

---

## 1. Executive Summary

- **Vendor Name:** OpenAI
- **Product/Service:** ChatGPT
- **Assessment Date:** 2025-06-18
- **Prepared By:** [Your Name]
- **Purpose of Assessment:** Evaluate the security governance posture of OpenAI's ChatGPT service to inform adoption decisions.

This report assesses key security controls, data protection practices, compliance certifications, and risk management processes for ChatGPT.

---

## 2. Vendor Overview

### 2.1 Product Tiers & Feature Availability

| Tier                 | Encryption at Rest | Encryption in Transit | Data Used for Training | IP Protection | Enterprise Controls | Evidence URLs |
|----------------------|--------------------|-----------------------|------------------------|---------------|---------------------|---------------|
| Free/ChatGPT (Basic) | Yes, AES-256       | Yes, TLS 1.2+         | Yes                    | Standard OpenAI ToS applies | No SSO, no SLA, no data deletion guarantees | https://help.openai.com/en/articles/5722486-how-your-data-is-used-to-improve-model-performance |
| ChatGPT Plus         | Yes, AES-256       | Yes, TLS 1.2+         | Yes                    | Standard OpenAI ToS applies | No SSO, no SLA, limited support | https://openai.com/blog/chatgpt-plus |
| ChatGPT Team         | Yes, AES-256       | Yes, TLS 1.2+         | No (opt-out enforced)  | Enhanced IP protections under enterprise agreement | Invitation control, team management, no SSO or SLA | https://openai.com/chatgpt/team, https://openai.com/enterprise-privacy |
| ChatGPT Enterprise   | Yes, AES-256       | Yes, TLS 1.2+         | No (opt-out enforced)  | Enhanced IP protections under enterprise agreement | SSO, audit logs, extended retention, data residency options | https://openai.com/enterprise-privacy |

*Include URLs to official docs, and reference screenshots where needed.*

## 2.2 Vendor/Product Details

- **Product/Service Description:** AI-powered conversational agent offering chat-based interfaces, developer APIs, and plugins.
- **Deployment Model:** Cloud-based SaaS hosted on AWS.
- **Geographical Locations:** Primary data processing in the United States (east and west regions).
- **Key Stakeholders:** OpenAI Security Team, Customer Success, Engineering, Operations.

---

## 3. Intellectual Property Protection

- **Ownership & Licensing:**
  - Source code is proprietary to OpenAI; no external licensing for core models.
  - Third-party dependencies managed under permissive licenses; compliance audited via automated SCA tools.
- **IP Protection Measures:**
  - Legal agreements (Terms of Service, Data Usage Agreements).
  - Trademark registrations for product names and branding.

Evidence:
- URL: https://openai.com/terms-of-service

---

## 4. Data Security & Encryption

### 4.1 Encryption at Rest

- All conversation data and logs are encrypted at rest using AES-256.
- Keys managed in AWS KMS with automated key rotation every 90 days.

Evidence:
- URL: https://openai.com/enterprise-privacy

### 4.2 Encryption in Transit

- TLS 1.2+ enforced for all in-transit connections (API endpoints, web UI).
- Certificates managed via AWS Certificate Manager with automatic renewal.

Evidence:
- URL: https://openai.com/enterprise-privacy

### 4.3 Access Control & Auditing

- Authentication via OAuth 2.0 and API keys; support for enterprise SSO (SAML).
- Role-based access control (RBAC) for internal service management.
- Audit logs capture user identity, timestamps, request metadata; retained for 90 days and available via log management console.

Evidence:
- URL: https://platform.openai.com/account/api-keys

---

## 5. Data Lifecycle & Privacy

- **Data Retention Policy:** Default retention of conversation data for 30 days for troubleshooting and abuse prevention.
- **Deletion & Purging Procedures:** Users can delete individual conversations via the UI; deletion processed within 30 days.
- **Data Residency & Sovereignty Controls:** Enterprise customers can request dedicated infrastructure in specific regions.
- **Data Deletion on Request:** API endpoint and UI support deletion requests; deletion logs retained for compliance auditing.

Evidence:
- URL: https://help.openai.com/en/articles/7039943-data-usage-for-consumer-services-faq

---

## 6. AI & Model Training Practices

- Customer conversation data is used to improve model performance by default.
- Opt-out available for enterprise customers under a Data Usage Agreement.
- Anonymization techniques applied to remove personally identifying metadata.

Evidence:
- URL: https://help.openai.com/en/articles/5722486-how-your-data-is-used-to-improve-model-performance

---

## 7. Security Certifications & Compliance

- **SOC 2 Type II:** Scope covers API services, data processing, and infrastructure.
- **ISO 27001:** Information security management system certified.

Evidence:
- URL: https://openai.com/security#compliance

---

## 8. Risk Management & Governance

- **Risk Framework:** NIST Cybersecurity Framework (CSF).
- **Threat Modeling:** Quarterly threat model reviews using Microsoft Threat Modeling Toolkit.
- **Periodic Security Assessments:** Annual third-party penetration tests; bi-annual internal code reviews.
- **Vulnerability Management:** CVSS-based severity classification; critical patches applied within 48 hours.

Evidence:
- URL: https://openai.com/security#risk-management

---

## 9. Incident Response & Disclosure

- Documented incident response plan aligning to NIST SP 800-61.
- Security Operations Center (SOC) monitors 24/7 with automated alerting.
- Mean Time to Detect (MTTD): < 15 minutes; Mean Time to Respond (MTTR): < 4 hours.
- **Unauthorized Access Disclosure:** Customers notified within 72 hours of confirmed breach.

Evidence:
- URL: https://openai.com/policies/breach-notification

---

## 10. Questions & Responses

1. **To what extent is conversation data encrypted at rest?**
   - Fully encrypted with AES-256 at rest. Keys rotated every 90 days via AWS KMS.

2. **To what extent is access to conversation data logged and auditable?**
   - All access is logged (API calls, UI actions). Logs include user ID, IP address, timestamp, and are retained 90 days.

3. **What are the vendor’s criteria and procedures for disclosing unauthorized access to conversation data?**
   - Unauthorized access triggers an internal investigation. Confirmed incidents are disclosed to impacted customers within 72 hours.

4. **Does the vendor have security and/or compliance-related certifications that they can share? If so, what scope is applied to them?**
   - SOC 2 Type II (API services), ISO 27001 (Information Security Management).

5. **Can conversation-related data and analyses be deleted upon request? If so, how are the data deleted?**
   - Yes. Deletion via UI/API. Data purged from primary and backup storage within 30 days; deletion logs retained.

6. **To what extent is conversation data used to train underlying models?**
   - Used by default to improve model performance. Enterprise customers can opt out under contract.

7. **What framework or approach does the vendor use to identify and minimize AI-related risks in their service(s)?**
   - Follows NIST CSF and OWASP AI Top 10. Regular red-teaming and adversarial testing.

---

*End of Report*
