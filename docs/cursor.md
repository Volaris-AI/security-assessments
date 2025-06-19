# Security Governance Report: Cursor AI IDE

*Based on the Security Governance Report Template*

---

## 1. Executive Summary

- **Vendor Name:** Cursor AI
- **Product/Service:** Cursor AI IDE
- **Product Summary:** Cursor AI IDE is an AI-assisted code editor that integrates contextual code suggestions, navigation tools, and privacy modes (local/Ghost Mode) to keep code and data on-device.
- **Assessment Date:** 2025-06-18
- **Prepared By:** [Your Name]
- **Purpose of Assessment:** Evaluate the security governance posture of the Cursor AI IDE product to inform adoption decisions.

This report reviews key security controls, data protection practices, compliance posture, and risk management for the Cursor AI IDE.

---

## 2. Vendor Overview

### 2.1 Product Tiers & Feature Availability

- **Free Tier**
  - Encryption at Rest: No findings
  - Encryption in Transit: No findings
  - Data Used for Training: Yes
  - IP Protection: Standard product terms
  - Enterprise Controls: No dedicated support, no team management, no contractual SLAs
  - Evidence URLs:
    - https://www.cursor.com/en/security
    - https://docs.cursor.com/account/plans-and-usage

- **Pro (Paid) Tier**
  - Encryption at Rest: No findings
  - Encryption in Transit: No findings
  - Data Used for Training: No
  - IP Protection: Standard product terms
  - Enterprise Controls: Privacy/Ghost Mode, local mode options but no formal SSO or SLAs
  - Evidence URLs:
    - https://docs.cursor.com/account/plans-and-usage
    - https://docs.cursor.com/account/privacy

- **Team Tier**
  - Encryption at Rest: No findings
  - Encryption in Transit: No findings
  - Data Used for Training: No
  - IP Protection: Team Terms of Service
  - Enterprise Controls: Invitation control, workspace management, custom Terms of Service
  - Evidence URLs:
    - https://www.cursor.com/en/terms-of-service-teams
    - https://docs.cursor.com/account/privacy

---

### 2.2 Vendor/Product Details

- **Product/Service Description:** AI-assisted code editor with contextual code suggestions, navigation, and automation. Supports local, privacy, and ghost modes.
- **Deployment Model:** Client application with optional cloud connectivity for AI inference.
- **Geographical Locations:** Services hosted on AWS and third-party AI model providers in the US.
- **Key Stakeholders:** Cursor Engineering, Security, and Product teams; third-party model providers.

---

... (rest unchanged)