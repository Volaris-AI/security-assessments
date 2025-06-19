# Security Governance Report: Grok (grok.com)

Based on the Security Governance Report Template

---

## 1. Executive Summary

- **Vendor Name:** x.AI LLC (“xAI”)
- **Product/Service:** Grok
- **Product Summary:**
  Grok is a conversational generative AI assistant powered by xAI’s state-of-the-art LLMs. It’s available as:
  - A standalone web chatbot at https://grok.com  
  - Native mobile apps (iOS/Android)  
  - An integration on the X platform  
  Grok supports natural language Q&A, real-time public post searches, image generation/editing, code assistance, and more—with a signature “humorous” tone.
- **Assessment Date:** 2025-06-19
- **Prepared By:** [Your Name]
- **Purpose of Assessment:**  
  Evaluate the security governance posture of Grok’s standalone service (grok.com, apps, API) to inform adoption and risk-management decisions.

---

## 2. Vendor Overview

### 2.1 Product Tiers & Feature Availability

For simplicity, we group Grok’s offerings into three tiers:

- **Free & Subscriber (Grok.com & Mobile Apps)**
  - Encryption at Rest: AES-256  
  - Encryption in Transit: TLS 1.2+  
  - Data Used for Training: Yes, by default (opt-out via “Improve the Model”)  
  - IP Protection: Users own Inputs/Outputs; attribution requested per Brand Guidelines  
  - Enterprise Controls: None  
  - Evidence URLs:  
    - “Is my data safe?” – xAI FAQ: <https://docs.x.ai/docs/faq#is-my-data-safe>  
    - Data controls & deletion – Help Center: <https://help.x.com/en/using-x/about-grok>

- **Enterprise API**  
  - Encryption at Rest: AES-256  
  - Encryption in Transit: TLS 1.2+  
  - Data Used for Training: No (Zero Data Retention option)  
  - IP Protection: Users own Outputs; contractual terms prevent model-training on customer data  
  - Enterprise Controls: API key management, audit logging, SOC II, GDPR, HIPAA compatibility  
  - Evidence URLs:  
    - HIPAA & Zero Data Retention – xAI FAQ: <https://docs.x.ai/docs/faq#is-the-xai-api-hipaa-compliant>  
    - Certifications & Trust Center – <https://trust.x.ai/>

- **X-Integrated Grok**  
  - Encryption at Rest/Transit: Same as above  
  - Data Used for Training: Yes by default; opt-out via X Privacy Settings  
  - IP Protection: Governed by X Terms of Service & Privacy Policy  
  - Enterprise Controls: N/A (governed by X controls)  
  - Evidence URLs: <https://help.x.com/en/using-x/about-grok>

### 2.2 Product Details

- **Deployment Model:** Multi-tenant SaaS (web, mobile, API), integrated into X for real-time public post access.  
- **Geographical Locations:** Hosted on AWS (multi-region U.S. & global endpoints); data centers comply with GDPR region controls.  
- **Key Stakeholders:** xAI Security & Compliance teams, Product, Engineering, Legal.

---

## 3. Intellectual Property Protection

- **Ownership & Licensing:**  
  - Users retain all rights to Inputs and Outputs (including images)  
  - Outputs may be used commercially; attribution to “Grok by xAI” is requested per Brand Guidelines
- **IP Protection Measures:**  
  - Terms of Service grant explicit user ownership and usage rights  
  - Technical safeguards prevent unauthorized model-retraining on customer Outputs
- **Evidence URLs:**  
  - Consumer Terms – <https://x.ai/legal/terms-of-service>  
  - Brand Guidelines reference – xAI legal site

---

## 4. Data Security & Encryption

### 4.1 Encryption at Rest

All persisted data (conversation logs, user profiles, attachments) is encrypted with AES-256.

### 4.2 Encryption in Transit

All HTTP(S) traffic uses TLS 1.2+; HSTS enforced.

### 4.3 Access Control & Auditing

- API access via scoped API keys; support for key rotation and revocation.  
- Audit logs capture administrative actions, authentication events, and data-deletion requests.  
- Optional MFA for enterprise accounts.

**Evidence URLs:**  
- xAI FAQ (“Is my data safe?”) – <https://docs.x.ai/docs/faq#is-my-data-safe>  
- Trust Center – <https://trust.x.ai/>

---

## 5. Data Lifecycle & Privacy

- **Data Collection:** Prompts, metadata, and responses collected to deliver service.  
- **Retention:**  
  - Default: 30 days for API logs and conversation history (for abuse-monitoring)  
  - Private Chat mode: data excluded from history, auto-deleted after 30 days  
- **User Controls:**  
  - Opt-out of training via “Improve the Model” toggle in Settings (web/app)  
  - Full conversation history deletion in user Settings (web/app)  
- **Evidence URLs:**  
  - Help Center: <https://help.x.com/en/using-x/about-grok>  
  - Web data controls: <https://docs.x.ai/docs/faq#how-do-i-select-whether-my-content-is-used-for-model-training>

---

## 6. AI & Model Training Practices

- **Pre-Training:** Publicly available web and vetted datasets (cutoff Q3 2023).  
- **Fine-Tuning & Feedback:**  
  - User content used for model improvement only with opt-in  
  - Feedback (thumbs up/down) may be used even if training is off—documented in UI  
- **Privacy by Design:** Private Chat mode and explicit toggles implement “privacy by design” principles.  
- **Evidence URLs:**  
  - Privacy Settings on web/app – <https://help.x.com/en/using-x/about-grok>  
  - Training controls – <https://docs.x.ai/docs/faq#how-do-i-select-whether-my-content-is-used-for-model-training>

---

## 7. Security Certifications & Compliance

- **Certifications:**  
  - SOC II Type 2  
  - GDPR compliant data controls  
  - HIPAA compatibility with Zero Data Retention option  
- **Standards & Frameworks:**  
  - ISO 27001 (in progress or planned)  
- **Evidence URLs:**  
  - Trust Center – <https://trust.x.ai/>  
  - “Are you GDPR and SOC II compliant?” – <https://docs.x.ai/docs/faq#are-you-gdpr-and-soc-ii-compliant>

---

## 8. Risk Management & Governance

- **Risk Acknowledgment:** Hallucinations, bias, and data-quality risks are documented.  
- **Monitoring:** Automated safety classifiers, anomalous-usage detection, and manual review by authorized personnel.  
- **Governance:**  
  - Regular third-party penetration testing  
  - Internal security champion program  
  - Incident response tabletop exercises

---

## 9. Incident Response & Disclosure

- **Reporting:** Security issues can be reported via xAI’s Trust Portal: <https://trust.x.ai/>  
- **Response Process:**  
  1. Triage by Security Operations Center (SOC)  
  2. Forensic analysis & containment  
  3. Notification to affected users/regulators per GDPR/CCPA requirements  
- **Evidence URLs:**  
  - Trust Portal & contact info – <https://trust.x.ai/>

---

## 10. Questions for Vendor

1. Can you provide details on your AWS region deployments and cross-region failover?  
2. What is the SLA for incident response and customer notifications?  
3. Do you maintain ISO 27001 certification in addition to SOC II?  
4. How granular is your audit logging (e.g., per-user, per-API call)?  
5. Can enterprise customers enforce IP-allowlisting or VPC-peering for the API?  
6. What processes govern third-party penetration tests (frequency, scope, reporting)?  
7. How is private Chat technically isolated from standard conversations to prevent data leakage?

---

*End of Report*