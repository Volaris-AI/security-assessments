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

| Tier          | Encryption at Rest | Encryption in Transit | Data Used for Training | IP Protection           | Enterprise Controls                                                 | Evidence URLs                                                                                   |
|---------------|--------------------|-----------------------|------------------------|-------------------------|----------------------------------------------------------------------|-------------------------------------------------------------------------------------------------|
| Free          | No findings        | No findings           | Yes                    | Standard product terms  | No dedicated support, no team management, no contractual SLAs       | https://www.cursor.com/en/security https://docs.cursor.com/account/plans-and-usage             |
| Pro (Paid)    | No findings        | No findings           | No                     | Standard product terms  | Privacy/Ghost Mode, local mode options but no formal SSO or SLAs    | https://docs.cursor.com/account/plans-and-usage, https://docs.cursor.com/account/privacy        |
| Team          | No findings        | No findings           | No                     | Team Terms of Service   | Invitation control, workspace management, custom Terms of Service   | https://www.cursor.com/en/terms-of-service-teams, https://docs.cursor.com/account/privacy      |

*Include URLs to official docs and reference screenshots or attachments where needed.*

---

### 2.2 Vendor/Product Details

- **Product/Service Description:** AI-assisted code editor with contextual code suggestions, navigation, and automation. Supports local, privacy, and ghost modes.
- **Deployment Model:** Client application with optional cloud connectivity for AI inference.
- **Geographical Locations:** Services hosted on AWS and third-party AI model providers in the US.
- **Key Stakeholders:** Cursor Engineering, Security, and Product teams; third-party model providers.

---

## 3. Intellectual Property Protection

- **Ownership & Licensing:**
  - Cursor AI IDE is proprietary software under commercial license.
  - Third-party components (e.g., Electron, OpenAI API) managed under respective licenses; compliance tracked via SCA.
- **IP Protection Measures:**
  - Standard End-User License Agreement (EULA).
  - Team Terms of Service for team tiers.

Evidence:
- URL: https://www.cursor.com/en/terms-of-service-teams

---

## 4. Data Security & Encryption

### 4.1 Encryption at Rest

- No public documentation confirming encryption of persisted data at rest.

Evidence:
- No findings

### 4.2 Encryption in Transit

- No public documentation confirming encryption of data in transit (e.g., TLS enforcement).

Evidence:
- No findings

### 4.3 Access Control & Auditing

- Supports local authentication via OS credentials.
- No public documentation on audit logging or access controls for cloud-connected features.

Evidence:
- No findings

---

## 5. Data Lifecycle & Privacy

- **Data Retention Policy:**
  - By default, code snippets are processed transiently and not stored. In Ghost/Privacy Mode, data is not transmitted.
- **Deletion & Purging Procedures:**
  - Users can clear local cache and history via application settings.
- **Data Residency & Sovereignty Controls:**
  - No public documentation on data residency options.
- **Data Deletion on Request:**
  - In Privacy Mode, data is not retained; deletion not applicable. For cloud mode, deletion procedures not documented.

Evidence:
- URL: https://docs.cursor.com/account/privacy

---

## 6. AI & Model Training Practices

- **Usage of Customer Data for Training:**
  - In free and Pro tiers, default AI inference uses third-party models; data may be used by model providers per their policies.
  - In Privacy/Ghost Mode (Pro and Team), customer code is not sent to providers for training.
- **Anonymization:** N/A
- **Opt-in/Opt-out:** Privacy Mode opt-in prevents data sharing.

Evidence:
- URL: https://docs.cursor.com/account/privacy

---

## 7. Security Certifications & Compliance

- No public information on formal certifications (e.g., ISO 27001, SOC 2).

Evidence:
- No findings

---

## 8. Risk Management & Governance

- No public details on documented risk frameworks or threat modeling processes.

Evidence:
- No findings

---

## 9. Incident Response & Disclosure

- No public documentation on incident response procedures, notification timelines, or breach disclosure criteria.

Evidence:
- No findings

---

## 10. Questions & Responses

1. **To what extent is conversation data encrypted at rest?**
   - No findings; require vendor evidence.

2. **To what extent is access to conversation data logged and auditable?**
   - No findings; require vendor evidence.

3. **What are the vendor’s criteria and procedures for disclosing unauthorized access to conversation data?**
   - No findings; require vendor evidence.

4. **Does the vendor have security and/or compliance-related certifications that they can share? If so, what scope is applied to them?**
   - No findings; require vendor evidence.

5. **Can conversation-related data and analyses be deleted upon request? If so, how are the data deleted?**
   - In Privacy/Ghost Mode, data is not stored. For other modes, procedures not documented; require vendor evidence.

6. **To what extent is conversation data used to train underlying models?**
   - In default mode, data may be used by model providers. In Privacy/Ghost Mode, data is not used for training.

7. **What framework or approach does the vendor use to identify and minimize AI-related risks in their service(s)?**
   - No findings; require vendor evidence.

---

*End of Report*