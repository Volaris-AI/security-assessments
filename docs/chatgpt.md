# Security Governance Report: OpenAI ChatGPT

*Based on the Security Governance Report Template*

---

## 1. Executive Summary

- **Vendor Name:** OpenAI
- **Product/Service:** ChatGPT
- **Product Summary:** ChatGPT is an AI-powered conversational agent offering natural language understanding and generation via a web UI and API for content creation, code assistance, and data analysis.
- **Assessment Date:** 2025-06-18
- **Prepared By:** [Your Name]
- **Purpose of Assessment:** Evaluate the security governance posture of OpenAI's ChatGPT service to inform adoption decisions.

This report assesses key security controls, data protection practices, compliance certifications, and risk management processes for ChatGPT.

---

## 2. Vendor Overview

### 2.1 Product Tiers & Feature Availability

- **Free Tier**  
  - Encryption at Rest: Yes (AES-256)  
  - Encryption in Transit: Yes (TLS 1.2+)  
  - Data Used for Training: Yes (used to improve models)  
  - IP Protection: OpenAI Terms of Service  
  - Enterprise Controls: None  
  - Evidence URLs:  
    - https://openai.com/policies/security  
    - https://platform.openai.com/docs/data-usage  

- **Plus Tier**  
  - Encryption at Rest: Yes (AES-256)  
  - Encryption in Transit: Yes (TLS 1.2+)  
  - Data Used for Training: Yes (used to improve models)  
  - IP Protection: OpenAI Terms of Service  
  - Enterprise Controls: None  
  - Evidence URLs:  
    - https://openai.com/pricing  
    - https://platform.openai.com/docs/data-usage  

- **Enterprise Tier**  
  - Encryption at Rest: Yes (AES-256)  
  - Encryption in Transit: Yes (TLS 1.2+)  
  - Data Used for Training: No (customer data not used by default)  
  - IP Protection: OpenAI Enterprise Terms  
  - Enterprise Controls: SSO, data residency options, audit logs, dedicated support  
  - Evidence URLs:  
    - https://openai.com/enterprise  
    - https://platform.openai.com/docs/data-usage-enterprise  

*Include URLs to official docs and reference screenshots where needed.*

---

### 2.2 Product Details

- **Deployment Model:** Hosted SaaS with web interface and REST API access.  
- **Geographical Locations:** Multi-region hosting (US, EU, Asia).  
- **Key Stakeholders:** OpenAI Security, Compliance, Platform, and Customer Success teams.

---

## 3. Intellectual Property Protection

- **Ownership & Licensing:**  
  - Customer content (prompts, data) remains owned by the customer.  
  - Underlying model and service intellectual property retained by OpenAI.  
- **IP Protection Measures:**  
  - Terms of Service and Enterprise License Agreement clarify IP rights.  
  - No customer data used for model training under Enterprise contracts.

**Evidence:**  
- https://platform.openai.com/docs/terms-of-service  

---

## 4. Data Security & Encryption

### 4.1 Encryption at Rest

- All data stored by OpenAI is encrypted at rest using AES-256.  
- Enterprise deployments may use customer-managed keys via cloud provider KMS.

**Evidence:**  
- https://platform.openai.com/docs/data-usage  

### 4.2 Encryption in Transit

- All client–server and inter-service communications use TLS 1.2+ with strong ciphers.  
- Certificate lifecycle managed by OpenAI/Self-hosted for on-prem Enterprise.

**Evidence:**  
- https://openai.com/policies/security  

### 4.3 Access Control & Auditing

- Free/Plus tiers use API keys and dashboard OAuth; Enterprise supports SAML SSO and RBAC.  
- Audit logs capture API usage, configuration changes, and admin actions; logs retained per policy.

**Evidence:**  
- https://platform.openai.com/docs/data-usage-enterprise  

---

## 5. Data Lifecycle & Privacy

- **Data Retention:**  
  - Free/Plus: prompts and responses retained for up to 30 days for abuse monitoring.  
  - Enterprise: retention periods configurable; option for zero retention.
- **Deletion & Purging:**  
  - API keys and history can be deleted via dashboard; Enterprise can enforce automatic purges.  
- **Data Residency Controls:**  
  - Enterprise plan allows selecting data region (EU, US, Asia).  
- **Data Deletion on Request:**  
  - Data Subject Access Request processed within 30 days via privacy portal.

**Evidence:**  
- https://openai.com/policies/privacy  

---

## 6. AI & Model Training Practices

- **Training Data Policy:**  
  - Customer prompts and outputs are not used to train base models by default.  
  - Enterprise customers can opt in for feedback-based fine-tuning under NDA.
- **Anonymization & Privacy:**  
  - Minimal metadata retained; no PII used in model updates without explicit consent.

**Evidence:**  
- https://platform.openai.com/docs/data-usage  

---

## 7. Security Certifications & Compliance

- **SOC 2 Type II** certificate covers API and infrastructure.  
- **ISO 27001, ISO 27017, ISO 27018** certified for cloud services.  
- **GDPR, CCPA** compliance for customer data.  
- **HIPAA BAAs** available for healthcare workloads.

**Evidence:**  
- https://openai.com/compliance  

---

## 8. Risk Management & Governance

- Aligned with NIST Cybersecurity Framework and ISO 27005 risk assessment.  
- Annual third-party penetration tests; continuous vulnerability scanning.  
- Responsible AI governance with internal Ethics Board reviews.

**Evidence:**  
- https://openai.com/policies/security  

---

## 9. Incident Response & Disclosure

- 24/7 Security Operations Center monitors anomalies.  
- Incident Response Plan aligned to NIST SP 800-61.  
- Customer notifications within SLA: Critical incidents within 24 hours.

**Evidence:**  
- https://openai.com/security-advisories  

---

## 10. Questions & Responses

1. To what extent is customer data encrypted at rest?  
2. How are API requests and responses audited and reviewed?  
3. Can Enterprise data be excluded from model training and analytics?  
4. What data residency options are available?  
5. What is the process and SLA for a DSAR or data deletion request?  
6. What frameworks govern AI risk and bias mitigation?  
7. Which compliance reports and penetration tests can be provided under NDA?

*End of Report*