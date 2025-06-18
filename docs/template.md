# Security Governance Report Template

**Instructions for Completion:**
Please fill out each section with clear, factual information and provide supporting evidence. For each item addressed:

- Include URLs to relevant documentation, configurations, or logs.
- Attach or reference screenshots or attachments as evidence where appropriate.
- If no evidence or details are found, explicitly state “No findings” and do not fabricate any information.

Use this template as a guiding structure for your assessment.


This template serves as the foundation for assessing the security governance posture of a software vendor. Use it to standardize evaluations and ensure that all key aspects are covered.

---

## 1. Executive Summary

- **Vendor Name:**
- **Assessment Date:**
- **Prepared By:**
- **Purpose of Assessment:**

Briefly summarize the scope, objectives, and high-level conclusions of the security governance review.

---

## 2. Vendor Overview

- **Product/Service Description:**
- **Deployment Model:** (SaaS, On-Premises, Hybrid)
- **Geographical Locations:**
- **Key Stakeholders:**

Outline the vendor’s business model and the context in which the product or service is delivered.

---

## 3. Intellectual Property Protection

- **Ownership & Licensing:**
  - Source code licensing terms
  - Third-party components and license compliance
- **IP Protection Measures:**
  - Code obfuscation or watermarking
  - Patent or trademark registrations
  - Legal agreements (e.g., NDAs)

---

## 4. Data Security & Encryption

### 4.1 Encryption at Rest

- Encryption algorithms and key management practices
- Scope of data encrypted (e.g., databases, backups, logs)
- Key rotation policy and tooling

### 4.2 Encryption in Transit

- Protocols used (e.g., TLS 1.2+)
- Certificate management and renewal process

### 4.3 Access Control & Auditing

- Authentication mechanisms (e.g., MFA, SSO)
- Role-based access control (RBAC) or attribute-based access control (ABAC)
- Audit logging: scope, retention, and review process

---

## 5. Data Lifecycle & Privacy

- **Data Retention Policy:**
- **Deletion & Purging Procedures:**
- **Data Residency & Sovereignty Controls:**
- **Data Deletion on Request:**
  - Process for handling deletion requests
  - Verification and proof of deletion

---

## 6. AI & Model Training Practices

- Usage of customer data to train internal or public models
- Data anonymization or pseudonymization techniques
- Opt-in/opt-out mechanisms for data usage in training

---

## 7. Security Certifications & Compliance

- List of certifications (e.g., ISO 27001, SOC 2, PCI DSS)
- Scope and coverage of each certification
- Last audit date and auditor details

---

## 8. Risk Management & Governance

- **Risk Framework:** (e.g., NIST, ISO 27005)
- **Threat Modeling Approach:**
- **Periodic Security Assessments:** (e.g., pen tests, code reviews)
- **Vulnerability Management:** patching cadence, severity classification

---

## 9. Incident Response & Disclosure

- Incident response plan and team structure
- Detection, containment, eradication, and recovery procedures
- Communication plans for stakeholders and regulators
- Criteria and procedures for unauthorized access disclosure

---

## 10. Questions for Vendor

1. To what extent is conversation data encrypted at rest? I know it’s encrypted in transit. I’m intentionally using the phrasing, “to what extent” to avoid a blanket “yes” answer that might actually mean, “partially, yes.”
2. To what extent is access to conversation data logged and auditable?
3. What are the vendor’s criteria and procedures for disclosing unauthorized access to conversation data?
4. Does the vendor have security and/or compliance-related certifications that they can share? If so, what scope is applied to them?
5. Can conversation-related data and analyses be deleted upon request? If so, how are the data deleted?
6. To what extent is conversation data used to train underlying models?
7. What framework or approach does the vendor use to identify and minimize AI-related risks in their service(s)?

---

*End of Template*