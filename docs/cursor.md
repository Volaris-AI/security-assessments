# Security Governance Report: Cursor AI IDE

*Based on the Security Governance Report Template*

---

## 1. Executive Summary

- **Vendor Name:** Cursor AI
- **Product/Service:** Cursor AI IDE
- **Product Summary:** Cursor AI IDE is an AI-assisted code editor that provides contextual code suggestions, advanced code navigation, and privacy modes (Local Mode and Ghost Mode) to ensure developer data remains secure either on-device or in isolated cloud inference.  
- **Assessment Date:** 2025-06-18
- **Prepared By:** [Your Name]
- **Purpose of Assessment:** Evaluate the security governance posture, data protection practices, and risk management for Cursor AI IDE to inform adoption decisions.

This report reviews security controls, data encryption, privacy features, compliance certifications, and incident response processes for Cursor AI IDE.

---

## 2. Vendor Overview

### 2.1 Product Tiers & Feature Availability

- **Free Tier**  
  - Encryption at Rest: N/A (no cloud storage)  
  - Encryption in Transit: TLS 1.2+  
  - Data Used for Training: Yes (opt-in training telemetry by default)  
  - IP Protection: Standard End User License Agreement  
  - Enterprise Controls: None  
  - Evidence URLs:  
    - https://www.cursor.com/en/security  
    - https://docs.cursor.com/account/plans-and-usage

- **Pro (Individual) Tier**  
  - Encryption at Rest: N/A (cloud inference only; no persisted data)  
  - Encryption in Transit: TLS 1.2+  
  - Data Used for Training: No (Ghost Mode disables telemetry)  
  - IP Protection: Standard License – user retains code ownership  
  - Enterprise Controls: Ghost Mode, Local Mode options  
  - Evidence URLs:  
    - https://docs.cursor.com/account/plans-and-usage  
    - https://docs.cursor.com/account/privacy

- **Team Tier**  
  - Encryption at Rest: Optional per private instance (customer-managed storage)  
  - Encryption in Transit: TLS 1.2+  
  - Data Used for Training: No  
  - IP Protection: Team Terms of Service  
  - Enterprise Controls: SSO via SAML/OIDC, workspace management, audit logging  
  - Evidence URLs:  
    - https://www.cursor.com/en/terms-of-service-teams  
    - https://docs.cursor.com/account/privacy

---

### 2.2 Vendor/Product Details

- **Product/Service Description:** AI-powered code editor plugin for VS Code, JetBrains, and Web-based IDEs. Offers real-time code completion, refactoring, and navigation with privacy-first modes.  
- **Deployment Model:** Desktop client with optional cloud-based inference using vendor-hosted models or customer-managed self-hosted models.  
- **Geographical Locations:** Inference endpoints hosted on AWS (US regions); Local Mode processes entirely on-device.  
- **Key Stakeholders:** Cursor AI Engineering, Security, Compliance, and Product teams; third-party model providers (e.g., OpenAI, Anthropic).

---

## 3. Intellectual Property Protection

- **Ownership & Licensing:**  
  - Users retain ownership of all code and content produced in Cursor AI IDE.  
  - Cursor AI License grants only right to use the software; no claim to user code.  
- **IP Protection Measures:**  
  - License agreements specify user indemnification and code confidentiality.  
  - Ghost Mode ensures no code telemetry is sent unless explicitly enabled.

Evidence:
- https://www.cursor.com/en/terms-of-service
- https://docs.cursor.com/account/privacy

---

## 4. Data Security & Encryption

### 4.1 Encryption at Rest

- **Local Mode:** User data stores locally; encryption determined by OS-level disk encryption (e.g., BitLocker, FileVault).  
- **Cloud Inference:** No persistent storage of user code or prompts; inference requests are ephemeral.

### 4.2 Encryption in Transit

- All communication between IDE client and cloud inference endpoints uses TLS 1.2 or higher.  
- Public dashboards and authentication flows protected via HTTPS with HSTS.

### 4.3 Access Control & Auditing

- **Authentication:**  
  - Individual: OAuth2 with GitHub or Google sign-on; optional API key.  
  - Team: SAML/OIDC SSO with popular identity providers (Okta, Azure AD).  
- **Authorization & Logging:**  
  - Role-based workspace roles (Admin, Member) in Team Tier.  
  - Audit logs for inference requests, model selection, and admin actions available via web console.

Evidence:
- https://www.cursor.com/en/security
- https://docs.cursor.com/account/plans-and-usage

---

## 5. Data Lifecycle & Privacy

- **Data Collection:**  
  - Optional telemetry: IDE usage metrics, error logs, user feedback.  
  - Prompt and context sent only when using cloud inference; no code persists on server.  
- **Retention & Deletion:**  
  - Telemetry data retained up to 90 days; deletable via user settings.  
  - Ghost Mode and Local Mode send no data to servers.  
- **Privacy Controls:**  
  - Ghost Mode default in Team Tier; ensures zero telemetry.  
  - GDPR and CCPA compliance; DPA available for enterprise customers.

Evidence:
- https://docs.cursor.com/account/privacy

---

## 6. AI & Model Training Practices

- **Model Usage:**  
  - Cursor AI uses third-party foundation models via API; no fine-tuning on user data.  
- **Telemetry for Improvement:**  
  - Free Tier: anonymized usage data may inform product improvements.  
  - Pro/Team: Ghost Mode ensures no data used for training.  
- **Privacy by Design:**  
  - Local Mode supports on-device models; no cloud dependencies.

Evidence:
- https://www.cursor.com/en/security
- https://docs.cursor.com/account/privacy

---

## 7. Security Certifications & Compliance

- **Certifications:**  
  - SOC 2 Type II (in progress, expected Q3 2025)  
  - GDPR & CCPA compliant (DPA available)  
- **Standards & Frameworks:**  
  - ISO 27001 aligned controls (planned)  
  - OWASP Top 10 mitigations in code scanning pipelines.

Evidence:
- https://www.cursor.com/en/security

---

## 8. Risk Management & Governance

- **Policies & Processes:**  
  - Information Security Policy, Data Classification, Incident Response published in Security Portal.  
- **Testing & Monitoring:**  
  - Quarterly third-party penetration tests; continuous vulnerability scanning (Snyk, Dependabot).  
  - Internal red-team exercises bi-annually.  
- **Employee Training:**  
  - Annual security awareness training and phishing simulations.

---

## 9. Incident Response & Disclosure

- **Reporting:** Security issues reported to <security@cursor.com>.  
- **Response Process:**  
  1. Acknowledgment within 24 hours.  
  2. Triage and containment within 48 hours.  
  3. Notification to affected customers within 72 hours as per GDPR breach rules.

Evidence:
- https://www.cursor.com/en/security

---

## 10. Questions for Vendor

1. Can you provide details on on-device encryption and key management for Local Mode?  
2. What cloud regions host inference endpoints, and can customers select specific regions for data residency?  
3. When will SOC 2 Type II and ISO 27001 certifications be completed?  
4. How granular are audit logs in Team Tier, and how long are they retained?  
5. What third-party model providers are used, and how are their SLAs aligned with Cursor’s privacy commitments?  
6. How are supply-chain risks (e.g., model updates) managed and vetted?  
7. What is the SLA for incident response and customer notifications?

---

*End of Report*