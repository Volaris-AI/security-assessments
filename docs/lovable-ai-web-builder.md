# Security Governance Report: Lovable

*Based on the Security Governance Report Template*

---

## 1. Executive Summary

- **Vendor Name:** Lovable, Inc.
- **Product/Service:** Lovable AI Web Builder
- **Product Summary:** Lovable is a no-code/low-code AI web application builder that lets users design and deploy full-stack web apps via natural-language prompts. It integrates frontend, backend (Supabase), authentication, and custom domains into a unified workflow.
- **Assessment Date:** 2025-06-18
- **Prepared By:** [Your Name]
- **Purpose of Assessment:** Evaluate Lovable’s security governance posture, focusing on data protection, access controls, compliance, AI training practices, and operational risk.

This report examines key security controls, data lifecycle management, model training policies, and compliance certifications for Lovable.

---

## 2. Vendor Overview

### 2.1 Product Tiers & Feature Availability

| Tier            | Encryption at Rest | Encryption in Transit | Data Used for Training    | IP Protection                        | Enterprise Controls                                | Evidence URLs                                              |
|-----------------|--------------------|-----------------------|---------------------------|--------------------------------------|----------------------------------------------------|-----------------------------------------------------------|
| Free            | No findings        | Yes (TLS 1.2+)        | Yes (free tier telemetry) | Standard Lovable Terms               | No SSO, limited messaging (5/day, 30/month)         | https://docs.lovable.dev/user-guides/messaging-limits      |
| Pro ($25/m)     | No findings        | Yes (TLS 1.2+)        | Yes (opt-out via settings)| Standard Lovable Terms               | Unlimited private projects, custom domains, Dev Mode| https://docs.lovable.dev/user-guides/messaging-limits      |
| Teams ($30/m)   | No findings        | Yes (TLS 1.2+)        | Yes (opt-out via settings)| Standard Lovable Terms               | Centralized billing, access management               | https://docs.lovable.dev/user-guides/teams               |
| Enterprise      | No findings        | Yes (TLS 1.2+)        | No (opt-out enforced)     | SLA-backed IP and copyright protections | SSO, audit logs, data residency options            | https://lovable.dev/pricing, https://lovable.dev/privacy  |

*Include URLs to official documentation where noted.*

---

### 2.2 Product Details

- **Product/Service Description:** Browser-based AI platform: builds UI, backend (Supabase), and hosting stacks based on prompts; supports landing pages, dashboards, and web apps.
- **Deployment Model:** SaaS hosted on Supabase and Vercel or custom domains.
- **Geographical Locations:** Data stored and processed in US regions (Supabase defaults) with custom domain routing.
- **Key Stakeholders:** Lovable Engineering, Security, Product, Customer Success teams.

---

### 2.3 Offerings & Interfaces

Lovable is delivered as a web application and API:

#### A. Web Builder UI

- **Features:** Graphical project editor, real-time preview, project settings (privacy, domains, Dev Mode).
- **Integration:** Supabase for database/auth; Vercel or custom domain for hosting.
- **Access:** Authenticate via email/password or OAuth providers; API keys stored in UI securely.

#### B. Chat-based Prompt Interface

- **Channels:** Built-in chat panel in the web UI.
- **Features:** Conversational prompts for scaffolding, editing, and deploying code.
- **Session History:** Stored per project; retention based on tier.

*Use the Web Builder for visual design and deployment; use chat prompts for AI-assisted edits and scaffolding.*

---

## 3. Intellectual Property Protection

- **Ownership & Licensing:**
  - Generated code and user content are owned by users under Lovable’s Terms.
  - Underlying platform code proprietary to Lovable.
- **IP Protection Measures:**
  - Terms of Service outline IP assignment and indemnification.

Evidence:
- URL: https://lovable.dev/privacy (Data usage, training, IP rights)

---

## 4. Data Security & Encryption

### 4.1 Encryption at Rest

- No public documentation confirms at-rest encryption for persisted project data on Supabase or hosting.

Evidence:
- No findings

### 4.2 Encryption in Transit

- All client-server communications use TLS 1.2+.

Evidence:
- URL: https://docs.lovable.dev/features/security (Security features overview)

### 4.3 Access Control & Auditing

- Authentication via email/password, OAuth, or third-party login.
- No public details on audit logging of user actions or API calls.

Evidence:
- URL: https://docs.lovable.dev/faq (API key warnings, security notes)

---

## 5. Data Lifecycle & Privacy

- **Data Retention Policy:**
  - Free/Pro chat messages and telemetry have daily and monthly limits; retention not publicly documented.
- **Deletion & Purging:**
  - Users can delete or export projects; deletion impact on backups unclear.
- **Data Residency Controls:**
  - No public controls; default Supabase region.
- **Data Deletion on Request:**
  - Privacy policy provides DSAR contact but no SLA details.

Evidence:
- URL: https://lovable.dev/privacy

---

## 6. AI & Model Training Practices

- Lovable may use free-tier telemetry to improve models.
- Users can opt-out for Pro and Enterprise tiers via privacy settings.
- No detailed pseudonymization policies public.

Evidence:
- URL: https://lovable.dev/privacy (Data usage, training section)

---

## 7. Security Certifications & Compliance

- No public information on SOC 2, ISO 27001, or other certifications.

Evidence:
- No findings

---

## 8. Risk Management & Governance

- No public details on risk frameworks or security review cadences.

Evidence:
- No findings

---

## 9. Incident Response & Disclosure

- Privacy page provides contact but no incident response SLA.

Evidence:
- No findings

---

## 10. Questions & Responses

1. **To what extent is conversation data encrypted at rest?**
   - No findings; require vendor documentation.

2. **To what extent is access to conversation data logged and auditable?**
   - No findings; require vendor documentation.

3. **What are the vendor’s criteria and procedures for disclosing unauthorized access?**
   - No findings; require vendor documentation.

4. **Does the vendor have security/compliance certifications?**
   - No findings; require vendor documentation.

5. **Can conversation data be deleted upon request? How?**
   - Deletion via project settings; DSAR contact in privacy policy; details unconfirmed.

6. **To what extent is conversation data used to train underlying models?**
   - Free tier data may be used; Pro/Enterprise opt-out available. (Evidence: privacy policy)

7. **What framework or approach does the vendor use to identify and minimize AI-related risks?**
   - No findings; require vendor documentation.

---

*End of Report*