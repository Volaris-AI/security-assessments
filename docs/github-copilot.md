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

- **Copilot Individual**
  - Encryption at Rest: Yes (AES-256)
  - Encryption in Transit: Yes (TLS 1.2+)
  - Data Used for Training: No (prompts discarded)
  - IP Protection: GitHub Terms of Service
  - Enterprise Controls: 2FA, personal account security
  - Evidence URLs:
    - https://resources.github.com/copilot-trust-center/

- **Copilot Business**
  - Encryption at Rest: Yes (AES-256)
  - Encryption in Transit: Yes (TLS 1.2+)
  - Data Used for Training: No (prompts discarded)
  - IP Protection: GitHub Terms of Service
  - Enterprise Controls: SAML SSO, organization policies, audit logging, admin controls, SLA options
  - Evidence URLs:
    - https://resources.github.com/copilot-trust-center/
    - https://docs.github.com/en/copilot/managing-copilot-business

*Include URLs to official docs and reference screenshots where needed.*

---

### 2.2 Product Details

- **Product Description:** AI-powered code assistant that provides context-aware code completions, suggestions, and conversational chat.
- **Deployment Model:** Cloud-based SaaS hosted in GitHub-owned Microsoft Azure tenants.
- **Geographical Locations:** Multi-region Azure deployments (US, EU, Asia).
- **Key Stakeholders:** GitHub Security & Compliance, DevOps, Engineering, GitHub Advanced Security teams.

---

## 3. Intellectual Property Protection

...