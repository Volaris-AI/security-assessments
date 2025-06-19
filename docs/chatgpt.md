# Security Governance Report: OpenAI ChatGPT

*Based on the Security Governance Report Template*

---

## 1. Executive Summary

- **Vendor Name:** OpenAI
- **Product/Service:** ChatGPT
- **Product Summary:** ChatGPT is an AI-powered conversational agent offering natural language understanding and generation via a web UI and API. Key use cases include content creation, code assistance, data analysis, and customer support.
- **Assessment Date:** 2025-06-18
- **Prepared By:** [Your Name]
- **Purpose of Assessment:** Evaluate the security governance posture, data protection measures, compliance certifications, and risk management processes of ChatGPT to inform enterprise adoption decisions.

This report examines ChatGPT’s encryption, access controls, privacy practices, AI training policies, and incident response capabilities.

---

## 2. Vendor Overview

### 2.1 Product Tiers & Feature Availability

- **Free Tier**  
  - Encryption at Rest: AES-256  
  - Encryption in Transit: TLS 1.2+  
  - Data Used for Training: Yes (prompts may be used to improve models)  
  - IP Protection: OpenAI Terms of Service  
  - Enterprise Controls: None  
  - Evidence URLs:  
    - https://openai.com/policies/security  
    - https://platform.openai.com/docs/data-usage

- **Plus Tier**  
  - Encryption at Rest: AES-256  
  - Encryption in Transit: TLS 1.2+  
  - Data Used for Training: Yes  
  - IP Protection: OpenAI Terms of Service  
  - Enterprise Controls: None  
  - Evidence URLs:  
    - https://openai.com/pricing  
    - https://platform.openai.com/docs/data-usage

- **Enterprise Tier**  
  - Encryption at Rest: AES-256  
  - Encryption in Transit: TLS 1.2+  
  - Data Used for Training: No (customer data excluded)  
  - IP Protection: Enterprise Terms of Service  
  - Enterprise Controls: SSO (SAML/OIDC), data residency options, audit logs, dedicated support  
  - Evidence URLs:  
    - https://openai.com/enterprise  
    - https://platform.openai.com/docs/data-usage-enterprise

### 2.2 Product Details

- **Deployment Model:** Hosted SaaS offering via web application and REST API.  
- **Geographical Locations:** Multi-region deployments across the US, EU, and Asia.  
- **Key Stakeholders:** OpenAI Security Team, Compliance Team, Product Management, and Customer Success.

---

## 3. Intellectual Property Protection

- **Ownership & Licensing:**  
  - Customer retains full ownership of all inputs (prompts) and outputs (generated content).  
  - OpenAI retains IP rights to the model and service.  
- **IP Protection Measures:**  
  - Terms of Service explicitly grant customers usage rights and protections under Enterprise contracts.  
- **Evidence URLs:**  
  - https://platform.openai.com/docs/terms-of-service

---

## 4. Data Security & Encryption

### 4.1 Encryption at Rest

- All customer data (prompts, responses, logs) is encrypted at rest using AES-256.  
- Enterprise deployments support customer-managed keys via cloud KMS.

### 4.2 Encryption in Transit

- All communications use TLS 1.2+ with strong cipher suites.  
- HSTS enforced for web endpoints.

### 4.3 Access Control & Auditing

- Free/Plus: API keys with optional MFA; Enterprise: SSO integration and RBAC.  
- Audit logs capture all API usage, configuration changes, and admin actions; retained per policy.

**Evidence URLs:**  
- https://openai.com/policies/security  
- https://platform.openai.com/docs/data-usage-enterprise

---

## 5. Data Lifecycle & Privacy

- **Data Retention:**  
  - Free/Plus: data retained for up to 30 days for abuse monitoring.  
  - Enterprise: configurable retention or zero data retention.  
- **Deletion & Purging:**  
  - Users can delete conversation history via dashboard; backend purge occurs within 30 days.  
- **Data Residency Controls:**  
  - Enterprise customers choose storage region per deployment.  
- **Data Subject Requests:**  
  - DSAR process available via Privacy Portal; fulfilled within 30 days.

**Evidence URLs:**  
- https://openai.com/policies/privacy  
- https://platform.openai.com/docs/data-usage

---

## 6. AI & Model Training Practices

- **Training Data Policy:**  
  - Enterprise tier excludes all customer data from model training.  
  - Free/Plus data may be used for research/improvement; customers can opt out.  
- **Anonymization & Privacy:**  
  - Minimal metadata retention; no PII used in training without explicit consent.

**Evidence URLs:**  
- https://platform.openai.com/docs/data-usage  
- https://openai.com/enterprise

---

## 7. Security Certifications & Compliance

- **Certifications:** SOC 2 Type II, ISO 27001/27017/27018.  
- **Regulatory Compliance:** GDPR, CCPA; HIPAA BAAs available.  
- **Frameworks:** NIST CSF implemented across infrastructure.

**Evidence URLs:**  
- https://openai.com/compliance  
- https://platform.openai.com/docs/data-usage-enterprise

---

## 8. Risk Management & Governance

- **Governance:** Responsible AI Governance Council; internal ethics reviews.  
- **Risk Assessment:** Quarterly threat modeling; annual third-party penetration tests.  
- **Monitoring:** Continuous vulnerability scanning and SIEM alerts.

**Evidence URLs:**  
- https://openai.com/policies/security

---

## 9. Incident Response & Disclosure

- **Incident Response Plan:** Aligned with NIST SP 800-61.  
- **SOC Monitoring:** 24/7 Security Operations Center and SRE on-call.  
- **Notifications:** Critical incidents reported to customers within 24 hours; public advisories for major events.

**Evidence URLs:**  
- https://openai.com/security-advisories  
- https://platform.openai.com/docs/enterprise-security

---

## 10. Questions for Vendor

1. To what extent is customer data encrypted at rest and how are keys managed?  
2. How granular is audit logging (per user, per request)?  
3. Can Free/Plus tier users fully opt out of data usage for model training?  
4. What are the data residency options for Enterprise customers?  
5. What is the SLA and process for fulfilling DSAR and deletion requests?  
6. Which AI governance frameworks and bias mitigation processes are in place?  
7. Can you share the latest third-party penetration test and compliance report under NDA?

---

*End of Report*