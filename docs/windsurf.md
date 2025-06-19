# Security Governance Report: Windsurf AI IDE

*Based on the Security Governance Report Template*

---

## 1. Executive Summary

- **Vendor Name:** Windsurf Inc.
- **Product/Service:** Windsurf AI IDE
- **Product Summary:** Windsurf is an AI-enhanced code editor offering in-IDE live previews, context-aware code suggestions, and real-time collaboration. It supports local and cloud modes with adjustable telemetry to balance productivity and privacy.
- **Assessment Date:** 2025-06-18
- **Prepared By:** [Your Name]
- **Purpose of Assessment:** Evaluate the security governance posture of the Windsurf AI IDE to inform adoption decisions.

This report reviews key security controls, data protection practices, compliance posture, and risk management for Windsurf.

---

## 2. Vendor Overview

### 2.1 Product Tiers & Feature Availability

| Tier                | Encryption at Rest | Encryption in Transit | Data Used for Training       | IP Protection           | Enterprise Controls                                      | Evidence URLs                                                                         |
|---------------------|--------------------|-----------------------|------------------------------|-------------------------|-----------------------------------------------------------|---------------------------------------------------------------------------------------|
| Free                | Yes (AES-256)      | Yes (TLS 1.2+)        | Yes (telemetry on by default)| Standard Terms of Service | No SSO, no SLA, default telemetry settings                | https://windsurf.com/security                                                     |
| Pro (Paid)          | Yes (AES-256)      | Yes (TLS 1.2+)        | Yes (configurable telemetry) | Standard Terms of Service | Adjustable telemetry, priority support                    | https://docs.windsurf.com/account/plans-and-usage, https://windsurf.com/security     |
| Enterprise (Cloud)  | Yes (AES-256)      | Yes (TLS 1.2+)        | No (opt-out enforced)        | Enterprise Terms of Service| SAML SSO, audit logs, data residency, contractual SLAs     | https://windsurf.com/security, https://windsurf.com/terms-of-service-enterprise       |

*Include URLs to official docs and reference screenshots where needed.*

---

### 2.2 Product Details

- **Product/Service Description:** AI-driven IDE integrating live previews, code generation, and collaboration for web and desktop development.
- **Deployment Model:** Client application with optional cloud services for AI inference and telemetry.
- **Geographical Locations:** AWS-based multi-region support (US, EU).
- **Key Stakeholders:** Engineering, Security, Product, Customer Success teams.

---

## 3. Intellectual Property Protection

- **Ownership & Licensing:**
  - Proprietary software under commercial license.
  - Third-party components managed under open-source licenses; compliance tracked via SCA.
- **IP Protection Measures:**
  - End-User License Agreement (EULA) defines IP rights and usage.
  - Enterprise customers receive custom Terms including IP indemnification.

Evidence:
- URL: https://windsurf.com/terms-of-service-enterprise

---

## 4. Data Security & Encryption

### 4.1 Encryption at Rest

- Code snippets and telemetry stored in cloud are encrypted at rest using AES-256.

Evidence:
- URL: https://windsurf.com/security#encryption

### 4.2 Encryption in Transit

- All data transmissions secured with TLS 1.2+.

Evidence:
- URL: https://windsurf.com/security#network-security

### 4.3 Access Control & Auditing

- Enterprise tier supports SAML SSO and role-based access controls.
- Telemetry and audit logs capture user actions and API calls; retention configurable.

Evidence:
- URL: https://windsurf.com/security#audit-logging

---

## 5. Data Lifecycle & Privacy

- **Data Retention Policy:** Telemetry and usage logs retained per tier (default 30 days for Free/Pro, configurable for Enterprise).
- **Deletion & Purging Procedures:** Admin portal allows deletion of telemetry and session data on demand.
- **Data Residency Controls:** Enterprise tier supports region selection for data storage.
- **Data Deletion on Request:** Formal deletion requests processed within 30 days; proof of deletion provided.

Evidence:
- URL: https://windsurf.com/security#data-retention

---

## 6. AI & Model Training Practices

- Free/Pro tiers share telemetry data with Windsurf models for continuous improvement.
- Enterprise tier telemetry opt-out prevents data from being used for model training.
- Pseudonymization applied to user identifiers in training data.

Evidence:
- URL: https://windsurf.com/security#model-training

---

## 7. Security Certifications & Compliance

- **SOC 2 Type II** (Cloud services)
- **ISO 27001** (Information Security Management)

Evidence:
- URL: https://windsurf.com/security#compliance

---

## 8. Risk Management & Governance

- Windsurf follows NIST Cybersecurity Framework for risk management.
- Regular threat modeling and security reviews integrated into SDLC.
- Bi-annual third-party penetration tests.

Evidence:
- URL: https://windsurf.com/security#risk-management

---

## 9. Incident Response & Disclosure

- Incident response plan aligned to NIST SP 800-61.
- 24/7 security monitoring; customers notified within SLA timelines (24-72 hrs).
- Post-incident reports provided to Enterprise customers.

Evidence:
- URL: https://windsurf.com/security#incident-response

---

## 10. Questions & Responses

1. **To what extent is conversation data encrypted at rest?**
   - Fully encrypted AES-256 at rest for all tiers. (Evidence: encryption section)

2. **To what extent is access to conversation data logged and auditable?**
   - Audit logs capture all cloud interactions and are configurable by tier. (Evidence: audit logging section)

3. **What are the vendor’s criteria and procedures for disclosing unauthorized access to conversation data?**
   - Unauthorized access triggers IR plan; disclosure to impacted customers within 72 hours. (Evidence: incident response section)

4. **Does the vendor have security and/or compliance-related certifications that they can share? If so, what scope is applied to them?**
   - SOC 2 Type II and ISO 27001 cover cloud services, data storage, and telemetry.

5. **Can conversation-related data and analyses be deleted upon request? If so, how are the data deleted?**
   - Admin portal allows immediate deletion; backend purge completed within 30 days. (Evidence: data retention section)

6. **To what extent is conversation data used to train underlying models?**
   - Free/Pro tiers: telemetry used by default; Enterprise: telemetry opt-out. (Evidence: model training section)

7. **What framework or approach does the vendor use to identify and minimize AI-related risks in their service(s)?**
   - Follows NIST CSF, conducts threat modeling and regular security reviews. (Evidence: risk management section)

---

*End of Report*