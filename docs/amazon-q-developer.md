# Security Governance Report: Amazon Q Developer

*Based on the Security Governance Report Template*

---

## 1. Executive Summary

- **Vendor Name:** Amazon Web Services (AWS)
- **Product/Service:** Amazon Q Developer
- **Product Summary:** Amazon Q Developer is a generative AI assistant integrated into IDEs, CLI, and AWS Console that accelerates software development tasks such as code generation, testing, vulnerability scanning, and deployment automation. It leverages AWS Bedrock foundation models and native AWS services for secure, scalable AI-driven development.
- **Assessment Date:** 2025-06-18
- **Prepared By:** [Your Name]
- **Purpose of Assessment:** Evaluate the security governance posture of Amazon Q Developer to guide enterprise adoption decisions.

This report examines key security controls, data protection practices, compliance certifications, risk management, and AI training policies for Amazon Q Developer.

---

## 2. Vendor Overview

### 2.1 Product Tiers & Feature Availability

| Tier                 | Encryption at Rest | Encryption in Transit | Data Used for Training                     | IP Protection                   | Enterprise Controls                                                     | Evidence URLs                                                                                               |
|----------------------|--------------------|-----------------------|--------------------------------------------|---------------------------------|-------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
| Free Tier            | AES-256 (inherited)| TLS 1.2+              | Yes (prompts may be used for improvement)  | AWS Service Terms apply         | No SSO, no SLA, default telemetry settings                                | https://aws.amazon.com/q/, https://aws.amazon.com/free                                                       |
| Pro Subscription     | AES-256 (inherited)| TLS 1.2+              | No (opt-out enforced for Pro subscribers)  | AWS Service Terms apply         | SAML SSO via AWS IAM Identity Center, audit logging, configurable telemetry | https://aws.amazon.com/q/developer/, https://aws.amazon.com/q/developer/pricing/                            |

*Include URLs to official docs and reference screenshots where needed.*

---

### 2.2 Product Details

- **Product/Service Description:** Generative AI assistant for software development, integrated into IDEs (VS Code, JetBrains, Eclipse), CLI, and AWS Console.
- **Deployment Model:** SaaS using AWS Bedrock foundation models and AWS-managed infrastructure.
- **Geographical Locations:** Multi-region AWS deployments (US, EU, Asia-Pacific).
- **Key Stakeholders:** AWS Q Development team, AWS Security, AWS Compliance, Customer Success.

---

## 3. Intellectual Property Protection

- **Ownership & Licensing:**
  - Amazon Q Developer is proprietary AWS software governed by AWS Service Terms.
  - Foundation models licensed under AWS Bedrock agreements.
- **IP Protection Measures:**
  - AWS Service Terms define IP rights; customer content remains owned by the customer.
  - Pro subscription includes content privacy: Pro user inputs not used to improve service.

Evidence:
- URL: https://aws.amazon.com/service-terms/
- URL: https://aws.amazon.com/q/developer/ ("Your content is yours")

---

## 4. Data Security & Encryption

### 4.1 Encryption at Rest

- AWS-managed storage uses AES-256 encryption for all persisted Q Developer data (prompts, logs, telemetry).
- Keys managed by AWS KMS with automated rotation.

Evidence:
- URL: https://docs.aws.amazon.com/bedrock/latest/userguide/security.html#encryption-at-rest

### 4.2 Encryption in Transit

- All communications secured using TLS 1.2+.
- Endpoints provisioned via AWS Certificate Manager.

Evidence:
- URL: https://docs.aws.amazon.com/bedrock/latest/userguide/security.html#transport-security

### 4.3 Access Control & Auditing

- Free Tier: IAM user login with MFA; Pro: supports AWS IAM Identity Center/SAML SSO.
- Audit logs capture API calls, chat interactions, and code scans; logs viewable via AWS CloudTrail.

Evidence:
- URL: https://docs.aws.amazon.com/cloudtrail/latest/userguide/cloudtrail-user-guide.html
- URL: https://aws.amazon.com/q/developer/ (Enterprise access controls section)

---

## 5. Data Lifecycle & Privacy

- **Data Retention Policy:** Free Tier prompts and telemetry retained 30 days by default; Pro subscribers can configure retention via AWS console.
- **Deletion & Purging Procedures:** Customers can delete session history and telemetry through AWS Q console; backend purge within 30 days.
- **Data Residency Controls:** Pro subscription allows specifying data region via AWS Settings.
- **Data Deletion on Request:** AWS Data Subject Request procedures apply; completion within 30 days with proof of deletion.

Evidence:
- URL: https://aws.amazon.com/q/developer/ (Privacy and telemetry section)
- URL: https://aws.amazon.com/compliance/data-privacy-faq/

---

## 6. AI & Model Training Practices

- Free Tier telemetry may be used to tune AWS Bedrock models.
- Pro subscription disables telemetry for model improvement; customer data not used in training pipelines.
- Pseudonymization applied to any metadata in training datasets.

Evidence:
- URL: https://aws.amazon.com/bedrock/faqs/#data_usage

---

## 7. Security Certifications & Compliance

- **SOC 2 Type II** (includes AWS Q services)
- **ISO 27001, ISO 27017, ISO 27018**
- **FedRAMP Moderate** (select AWS GovCloud regions)
- **PCI DSS, HIPAA Eligible**

Evidence:
- URL: https://aws.amazon.com/compliance/programs/

---

## 8. Risk Management & Governance

- AWS uses NIST Cybersecurity Framework and ISO 27005 for risk management.
- Threat modeling integrated into service design; quarterly reviews.
- Annual third-party penetration tests and continuous internal security assessments.

Evidence:
- URL: https://aws.amazon.com/security/

---

## 9. Incident Response & Disclosure

- AWS IR plan aligned to NIST SP 800-61.
- Global Security Operations Center monitors 24/7.
- Customers notified of critical incidents per SLA within 24 hours.
- Public incident summaries published on AWS Security Bulletins.

Evidence:
- URL: https://aws.amazon.com/security/security-bulletins/

---

## 10. Questions & Responses

1. **To what extent is conversation data encrypted at rest?**
   - Fully encrypted using AES-256; keys managed by AWS KMS with rotation. (Evidence: Encryption-at-rest section)

2. **To what extent is access to conversation data logged and auditable?**
   - All interactions logged by AWS CloudTrail; logs retained per customer policy. (Evidence: CloudTrail docs)

3. **What are the vendor’s criteria and procedures for disclosing unauthorized access to conversation data?**
   - AWS follows IR plan; notifies impacted customers within SLA (24 hrs) and publishes security bulletins. (Evidence: Security Bulletins)

4. **Does the vendor have security and/or compliance-related certifications that they can share? If so, what scope is applied to them?**
   - SOC 2, ISO 27001/17/18, FedRAMP, PCI DSS, HIPAA; scope covers AWS Q, Bedrock, and underlying AWS services. (Evidence: AWS compliance)

5. **Can conversation-related data and analyses be deleted upon request? If so, how are the data deleted?**
   - Yes. Customers can delete data via AWS console; AWS processes deletion within 30 days under DSAR process. (Evidence: AWS Data Privacy FAQ)

6. **To what extent is conversation data used to train underlying models?**
   - Free Tier data may be used for model improvement; Pro subscription disables telemetry-based training. (Evidence: Bedrock data usage FAQ)

7. **What framework or approach does the vendor use to identify and minimize AI-related risks in their service(s)?**
   - Follows NIST CSF and ISO 27005; employs threat modeling, red teaming, and regular security reviews. (Evidence: AWS Security)

---

*End of Report*