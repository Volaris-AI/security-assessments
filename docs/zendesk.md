# Security Governance Report: Zendesk Support & AI Capabilities

*Based on the Security Governance Report Template*

---

## 1. Executive Summary

- **Vendor Name:** Zendesk, Inc.
- **Product/Service:** Zendesk Support with AI (Answer Bot)
- **Product Summary:** Zendesk Support is a cloud-based customer service platform offering ticketing, self-service, and collaboration tools. AI capabilities are provided by Answer Bot, which uses machine learning to automate responses and route tickets.
- **Assessment Date:** 2025-06-19
- **Prepared By:** [Your Name]
- **Purpose of Assessment:** Evaluate the security governance posture of Zendesk Support and its AI features to inform adoption and integration decisions.

This report covers security controls, data protection, compliance certifications, risk management, and AI model training practices for Zendesk Support and Answer Bot.

---

## 2. Vendor Overview

### 2.1 Product Tiers & Feature Availability

- **Team Tier**
  - Encryption at Rest: Yes (AES-256)
  - Encryption in Transit: Yes (TLS 1.2+)
  - Data Used for Training: Yes (Answer Bot uses anonymized ticket data to improve models)
  - IP Protection: Zendesk Terms of Service
  - Enterprise Controls: Basic user roles, multi-brand support, community forums
  - Evidence URLs:
    - https://www.zendesk.com/trust/
    - https://support.zendesk.com/hc/en-us/articles/4408837152322-Zendesk-Privacy-Policy

- **Professional Tier**
  - Encryption at Rest: Yes (AES-256)
  - Encryption in Transit: Yes (TLS 1.2+)
  - Data Used for Training: Yes (anonymized meta-data only)
  - IP Protection: Zendesk Terms of Service
  - Enterprise Controls: Custom roles, audit logs, SAML SSO
  - Evidence URLs:
    - https://support.zendesk.com/hc/en-us/articles/4409267555474-Zendesk-Role-Based-Access-Control
    - https://www.zendesk.com/trust/security/

- **Enterprise Tier**
  - Encryption at Rest: Yes (AES-256, customer-managed keys available)
  - Encryption in Transit: Yes (TLS 1.2+)
  - Data Used for Training: No (customer data not used to train AI models by default)
  - IP Protection: Zendesk Enterprise Data Protection add-on
  - Enterprise Controls: Advanced SSO, data residency, compliance reports, audit exports
  - Evidence URLs:
    - https://support.zendesk.com/hc/en-us/articles/360022189913-Enterprise-Data-Protection-Overview
    - https://www.zendesk.com/trust/compliance/

*Include URLs to official docs and reference screenshots where needed.*

---

### 2.2 Product Details

- **Product Description:** Cloud-native help desk and ticketing system with AI-driven automation.
- **Deployment Model:** SaaS hosted in AWS (multi-region).
- **Geographical Locations:** US, EU, APAC data centers; regional data residency for Enterprise.
- **Key Stakeholders:** Zendesk Security, Compliance, Product teams; Customer IT/Security.

---

## 3. Intellectual Property Protection

- **Ownership & Licensing:** Proprietary SaaS under Zendesk Master Subscription Agreement.
- **IP Protection Measures:** Standard terms define customer ownership of data; AI model IP retained by Zendesk.

Evidence:
- URL: https://www.zendesk.com/company/agreements/

---

## 4. Data Security & Encryption

### 4.1 Encryption at Rest

- Data encrypted using AES-256. Enterprise tier supports customer-managed keys via AWS KMS.

Evidence:
- URL: https://www.zendesk.com/trust/security/

### 4.2 Encryption in Transit

- All traffic secured with TLS 1.2+; HSTS enabled.

Evidence:
- URL: https://www.zendesk.com/trust/network-security/

### 4.3 Access Control & Auditing

- Supports SAML SSO, RBAC, and audit logs across tiers. Logs exportable for Enterprise customers.

Evidence:
- URL: https://support.zendesk.com/hc/en-us/articles/360022189913-Enterprise-Data-Protection-Overview

---

## 5. Data Lifecycle & Privacy

- **Data Retention Policy:** Default retention 365 days; configurable per account.
- **Deletion & Purging Procedures:** Admin portal allows bulk deletion and sandbox environments for testing.
- **Data Residency Controls:** Enterprise tier offers regional data storage (EU, APAC).
- **Data Deletion on Request:** DSAR handled via Zendesk Privacy portal; processed within 30 days.

Evidence:
- URL: https://support.zendesk.com/hc/en-us/articles/4408837152322-Zendesk-Privacy-Policy

---

## 6. AI & Model Training Practices

- Answer Bot uses machine learning on historical ticket text. Training data is anonymized and not shared outside Zendesk.
- Enterprise tier can opt-out of model training.
- Models updated regularly with synthetic and anonymized data to improve accuracy.

Evidence:
- URL: https://support.zendesk.com/hc/en-us/articles/115015463167-About-Answer-Bot

---

## 7. Security Certifications & Compliance

- **ISO 27001, ISO 27017, ISO 27018**
- **SOC 2 Type II**
- **GDPR, CCPA Compliance**
- **HIPAA Eligible** (per Business Associate Addendum)

Evidence:
- URL: https://www.zendesk.com/trust/compliance/

---

## 8. Risk Management & Governance

- Zendesk follows NIST CSF and ISO 27005 frameworks.
- Annual penetration testing by third parties; continuous vulnerability scanning.
- Internal security team reviews changes and performs threat modeling.

Evidence:
- URL: https://www.zendesk.com/trust/security/

---

## 9. Incident Response & Disclosure

- 24/7 Security Operations Center monitors incidents.
- Customers notified within 72 hours of critical incidents under SLA.
- Public security advisories published on Trust site.

Evidence:
- URL: https://www.zendesk.com/trust/security-advisories/

---

## 10. Questions & Responses

1. **To what extent is customer data encrypted at rest?**
   - AES-256 encryption; Enterprise supports customer-managed keys via AWS KMS.

2. **To what extent is traffic encrypted and protected?**
   - TLS 1.2+ with HSTS; network controls enforced.

3. **How is AI training data handled and protected?**
   - Anonymized ticket text used; Enterprise opt-out available.

4. **What user and admin controls are available for access and auditing?**
   - SAML SSO, RBAC, audit logs, data export, sandbox environments.

5. **What compliance certifications does Zendesk hold?**
   - ISO 27001/17/18, SOC 2 Type II, GDPR, CCPA, HIPAA eligible.

6. **How are DSAR and data deletion requests handled?**
   - Processed via Privacy portal; completed within 30 days.

7. **How does Zendesk manage security incidents?**
   - 24/7 SOC, SLA notifications within 72 hours, public advisories.

---

*End of Report*