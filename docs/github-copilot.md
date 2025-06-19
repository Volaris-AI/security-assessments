# Security Governance Report: GitHub Copilot

*Based on the Security Governance Report Template*

---

## 1. Executive Summary

- **Vendor Name:** GitHub, Inc.
- **Product/Service:** GitHub Copilot
- **Assessment Date:** 2025-06-18
- **Prepared By:** [Your Name]
- **Purpose of Assessment:** Evaluate the security governance posture of GitHub Copilot to inform adoption decisions.

This report assesses security controls, data protection practices, compliance certifications, risk management, and AI training policies for GitHub Copilot.

---

## 2. Vendor Overview

### 2.1 Product Tiers & Feature Availability

| Tier                   | Encryption at Rest   | Encryption in Transit | Data Used for Training    | IP Protection          | Enterprise Controls                                               | Evidence URLs                                                                                     |
|------------------------|----------------------|-----------------------|---------------------------|------------------------|--------------------------------------------------------------------|---------------------------------------------------------------------------------------------------|
| Copilot Individual     | Yes (AES-256)        | Yes (TLS 1.2+)        | No (prompts discarded)    | GitHub Terms apply     | 2FA, personal account security                                      | https://resources.github.com/copilot-trust-center/                                                  |
| Copilot Business       | Yes (AES-256)        | Yes (TLS 1.2+)        | No (prompts discarded)    | GitHub Terms apply     | SAML SSO, org policies, audit logging, admin controls, SLA options | https://resources.github.com/copilot-trust-center/, https://docs.github.com/en/copilot/managing-copilot-business |

*Include URLs to official docs and reference screenshots where needed.*

---

### 2.2 Vendor/Product Details

- **Product Description:** AI-powered code assistant that provides context-aware code completions, suggestions, and conversational chat.
- **Deployment Model:** Cloud-based SaaS hosted in GitHub-owned Microsoft Azure tenants.
- **Geographical Locations:** Multi-region Azure deployments (US, EU, Asia).
- **Key Stakeholders:** GitHub Security & Compliance, DevOps, Engineering, GitHub Advanced Security teams.

---

## 3. Intellectual Property Protection

- **Ownership & Licensing:**
  - Copilot client code and services proprietary to GitHub, Inc.
  - Underlying models licensed from OpenAI under commercial agreement.
- **IP Protection Measures:**
  - Standard GitHub Terms of Service for usage and IP ownership.
  - Data usage and privacy terms explicitly defined; no customer code used to retrain Copilot models.

Evidence:
- URL: https://docs.github.com/en/site-policy/github-terms/github-terms-of-service
- URL: https://resources.github.com/copilot-trust-center/#data-usage

---

## 4. Data Security & Encryption

### 4.1 Encryption at Rest

- All request payloads and logs encrypted at rest using AES-256.
- Keys managed via Azure Key Vault with automated rotation.

Evidence:
- URL: https://resources.github.com/copilot-trust-center/#data-encryption

### 4.2 Encryption in Transit

- All communication secured with TLS 1.2+.
- Certificate lifecycle managed by GitHub infrastructure.

Evidence:
- URL: https://resources.github.com/copilot-trust-center/#transport-security

### 4.3 Access Control & Auditing

- Individual: GitHub account login with 2FA; personal API tokens.
- Business: SAML-based SSO, RBAC via GitHub organization settings.
- Audit logs capture API usage, chat interactions, and admin actions; retained per org policy.

Evidence:
- URL: https://docs.github.com/en/github-ae@latest/admin/configuring-organization-settings/enabling-saml-single-sign-on-for-your-organization
- URL: https://docs.github.com/organizations/keeping-your-organization-secure/reviewing-the-audit-log-for-your-organization/

---

## 5. Data Lifecycle & Privacy

- **Data Retention Policy:** Prompts and suggestions are transient; not stored for training. Conversation history for continuity is session-based and stored per user settings.
- **Deletion & Purging Procedures:** Users can revoke tokens, clear session history, and request data deletion via GitHub support.
- **Data Residency Controls:** Business tier supports specifying region for audit logs and workspace metadata.
- **Data Deletion on Request:** GitHub provides data export and deletion via standard request forms.

Evidence:
- URL: https://resources.github.com/copilot-trust-center/#privacy
- URL: https://docs.github.com/en/site-policy/privacy-policies

---

## 6. AI & Model Training Practices

- Copilot uses OpenAI Codex models in Azure; user prompts in code editor are not used to train foundational models.
- Individual and Business tiers default to discard prompts; opt-in share for research only with consent.
- No customer code is incorporated into GitHub Copilot model training pipelines.

Evidence:
- URL: https://resources.github.com/learn/pathways/copilot/essentials/how-github-copilot-handles-data/

---

## 7. Security Certifications & Compliance

- **SOC 2 Type II** (GitHub Services, including Copilot).
- **ISO 27001, ISO 27017, ISO 27018**
- **FedRAMP Moderate** (GitHub Enterprise Cloud)
- **PCI DSS** (Payment processing)

Evidence:
- URL: https://resources.github.com/copilot-trust-center/#compliance-certifications
- URL: https://github.com/orgs/community/discussions/149393#certifications

---

## 8. Risk Management & Governance

- GitHub follows NIST Cybersecurity Framework.
- Threat modeling and security reviews integrated into SDLC.
- Annual third-party pen tests; continuous internal code audits.
- Vulnerability management: CVSS-based triage; critical patches within 24 hrs.

Evidence:
- URL: https://resources.github.com/copilot-trust-center/#risk-management

---

## 9. Incident Response & Disclosure

- Incident Response aligned to NIST SP 800-61.
- 24/7 Security Operations Center monitors platform.
- Customers notified per SLA: Critical incidents within 24 hrs.
- Public post-mortems published for major incidents.

Evidence:
- URL: https://docs.github.com/en/site-policy/security-policies

---

## 10. Questions & Responses

1. **To what extent is conversation data encrypted at rest?**
   - Fully encrypted AES-256; keys rotated via Azure Key Vault. (Evidence above)

2. **To what extent is access to conversation data logged and auditable?**
   - Logged at API and UI levels; stored in GitHub Audit Log. Accessible to org admins.

3. **What are the vendor’s criteria and procedures for disclosing unauthorized access to conversation data?**
   - Unauthorized access triggers IR plan; customers notified per SLA within 24 hrs; formal advisory published.

4. **Does the vendor have security and/or compliance-related certifications that they can share? If so, what scope is applied to them?**
   - SOC 2 Type II, ISO 27001/17/18, FedRAMP Moderate, PCI DSS; scopes include cloud hosting, API, storage.

5. **Can conversation-related data and analyses be deleted upon request? If so, how are the data deleted?**
   - Yes: users can clear history in UI, request data deletion via support; backend purge within 30 days.

6. **To what extent is conversation data used to train underlying models?**
   - Not used for training Copilot models; prompts discarded immediately after processing.

7. **What framework or approach does the vendor use to identify and minimize AI-related risks in their service(s)?**
   - Follows NIST CSF, uses GitHub’s internal AI risk framework; code suggestions filtered for vulnerabilities and public code matches.

---

*End of Report*