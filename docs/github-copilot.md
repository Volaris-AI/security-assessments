# Security Governance Report: GitHub Copilot

*Based on the Security Governance Report Template*

---

## 1. Executive Summary

- **Vendor Name:** GitHub, Inc.
- **Product/Service:** GitHub Copilot
- **Product Summary:** AI-powered pair programmer that provides context-aware code completions, suggestions, and conversational assistance within IDEs and code editors.
- **Assessment Date:** 2025-06-18
- **Prepared By:** [Your Name]
- **Purpose of Assessment:** Evaluate the security governance posture of GitHub Copilot, including data protection, compliance, risk management, and model training practices to inform adoption decisions.

Provide a concise overview of GitHub Copilot’s core functionality, key use cases, and high-level conclusions.

---

## 2. Vendor Overview

### 2.1 Product Tiers & Feature Availability

- **Copilot Individual**
  - **Encryption at Rest:** AES-256
  - **Encryption in Transit:** TLS 1.2+
  - **Data Used for Training:** No (user prompts and code snippets are not used to train Copilot)
  - **IP Protection:** Governed by GitHub Terms of Service
  - **Enterprise Controls:** Two-factor authentication (2FA), personal account security
  - **Evidence URLs:**
    - <https://resources.github.com/copilot-trust-center/>

- **Copilot Business**
  - **Encryption at Rest:** AES-256
  - **Encryption in Transit:** TLS 1.2+
  - **Data Used for Training:** No (user prompts and code snippets are not used to train Copilot)
  - **IP Protection:** Governed by GitHub Terms of Service and Business Addendum
  - **Enterprise Controls:** SAML SSO, organization policies, audit logging, admin controls, SLA options
  - **Evidence URLs:**
    - <https://resources.github.com/copilot-trust-center/>
    - <https://docs.github.com/en/copilot/managing-copilot-business>

### 2.2 Product Details

- **Product/Service Description:** AI-powered code assistant that integrates with popular IDEs (e.g., VS Code, JetBrains) to provide context-aware code completions, suggestions, and chat-based developer support.
- **Deployment Model:** SaaS hosted in GitHub-managed Microsoft Azure environments.
- **Geographical Locations:** Multi-region Azure deployments in the US, EU, and Asia.
- **Key Stakeholders:** GitHub Security & Compliance, DevOps teams, Engineering teams, GitHub Advanced Security teams.

---

## 3. Intellectual Property Protection

- **Ownership & Licensing:** Users retain ownership of generated code suggestions; licensing governed by GitHub Terms of Service.
- **IP Protection Measures:**
  - Copyright filtering to prevent suggestions of public repository code.
  - Developer-configurable policies to block license-incompatible code.
- **Evidence URLs:**
  - <https://docs.github.com/en/copilot/troubleshooting-copilot/licensing-and-copyright>

---

## 4. Data Security & Encryption

### 4.1 Encryption at Rest

- All user data (prompts, telemetry) is stored in Azure Blob Storage encrypted with AES-256.
- **Evidence URL:** <https://docs.github.com/en/copilot/security-trust-and-compliance>

### 4.2 Encryption in Transit

- Data in transit is protected by TLS 1.2+ across all client–server communications.
- **Evidence URL:** <https://docs.github.com/en/copilot/security-trust-and-compliance>

### 4.3 Access Control & Auditing

- Role-based access controls (RBAC) enforced via GitHub organization policies.
- Audit logs are available for Business customers, capturing API calls and administrative actions.
- **Evidence URL:** <https://docs.github.com/en/enterprise-cloud@latest/admin/monitoring-activity-in-your-enterprise/audit-log-events>

---

## 5. Data Lifecycle & Privacy

- **Data Retention:** User prompt data is retained for up to 30 days for troubleshooting and then purged.
- **Data Deletion:** Customers can request deletion of historical prompts and usage logs via GitHub Support.
- **Privacy Policy:** Complies with GDPR and CCPA requirements.
- **Evidence URL:** <https://docs.github.com/en/site-policy/privacy-policies/copilot-privacy-notice>

---

## 6. AI & Model Training Practices

- **Training Data:** Models are trained on public code with explicit license compliance.
- **User Data Use:** Customer prompts are excluded from model training datasets.
- **Model Updates:** Regular security reviews are conducted when integrating new training data.
- **Evidence URL:** <https://resources.github.com/copilot-trust-center/model-training/>

---

## 7. Security Certifications & Compliance

- **SOC 2 Type II**
- **ISO/IEC 27001**
- **GDPR Compliance**
- **Evidence URL:** <https://resources.github.com/copilot-trust-center/compliance/>

---

## 8. Risk Management & Governance

- **Risk Assessment:** Periodic threat modeling and third-party risk assessments.
- **Governance Framework:** Aligned with NIST Cybersecurity Framework (CSF).
- **Vendor Reviews:** Annual security reviews of underlying Azure infrastructure.
- **Evidence URL:** <https://resources.github.com/copilot-trust-center/risk-management/>

---

## 9. Incident Response & Disclosure

- **Incident Response Team:** Dedicated GitHub Security Incident Response Team (SIRT).
- **Notification Procedures:** Customers are notified within 48 hours of confirmed security incidents.
- **Disclosures:** Public security advisories and status updates are maintained on GitHub Status.
- **Evidence URLs:**
  - <https://www.githubstatus.com/>
  - <https://docs.github.com/en/site-policy/security-policies/security-incident-notification>

---

## 10. Questions for Vendor

1. To what extent is conversation data encrypted at rest beyond Azure infrastructure defaults?
2. How granular is the audit logging for Copilot Business customers (e.g., file-level, snippet-level)?
3. What processes ensure exclusion of user prompts from model training and updates?
4. Does GitHub offer customer-managed encryption keys (BYOK) for data at rest?
5. What are the SLAs for incident response, notification, and remediation?
6. How does GitHub validate license compliance in generated suggestions?
7. Are there planned certifications (e.g., FedRAMP) or additional compliance scopes in the roadmap?

*End of Report*
