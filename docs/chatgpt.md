# Security Governance Report: OpenAI ChatGPT

*Based on the Security Governance Report Template*

---

## 1. Executive Summary

- **Vendor Name:** OpenAI
- **Product/Service:** ChatGPT
- **Product Summary:** ChatGPT is an AI-powered conversational agent offering natural language understanding and generation via web UI and API for content creation, code assistance, and data analysis.
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
  - Data Used for Training: No (customer data not used)
  - IP Protection: Enterprise Terms
  - Enterprise Controls: SSO, data residency, audit logs, dedicated support
  - Evidence URLs:
    - https://openai.com/enterprise
    - https://platform.openai.com/docs/data-usage-enterprise

*Include URLs to official docs and reference screenshots where needed.*

---

### 2.2 Product Details

- **Deployment Model:** SaaS with web and API access.
- **Geographical Locations:** Multi-region deployments (US, EU, Asia).
- **Key Stakeholders:** OpenAI Security, Compliance, and Platform teams.

---

## 3. Intellectual Property Protection

...