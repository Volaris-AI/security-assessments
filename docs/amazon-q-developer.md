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

- **Free Tier**  
  - Encryption at Rest: AES-256 (inherited)  
  - Encryption in Transit: TLS 1.2+  
  - Data Used for Training: Yes (prompts and usage telemetry may be used for service improvement)  
  - IP Protection: Customer content remains owned by customer; governed by AWS Service Terms  
  - Enterprise Controls: None (no SSO, no SLA, default telemetry collection)  
  - Evidence URLs:  
    - https://aws.amazon.com/q/  
    - https://aws.amazon.com/free

- **Pro Subscription**  
  - Encryption at Rest: AES-256 (inherited)  
  - Encryption in Transit: TLS 1.2+  
  - Data Used for Training: No (customer prompts and sessions are not used for model training)  
  - IP Protection: Customer retains all rights; AWS Service Terms apply  
  - Enterprise Controls: SAML SSO via AWS IAM Identity Center, audit logging via CloudTrail, configurable telemetry settings  
  - Evidence URLs:  
    - https://aws.amazon.com/q/developer/  
    - https://aws.amazon.com/q/developer/pricing/

---

### 2.2 Product Details

- **Product/Service Description:** Generative AI assistant for software development, integrated into IDEs (VS Code, JetBrains, Eclipse), CLI, and AWS Console.
- **Deployment Model:** SaaS leveraging AWS Bedrock foundation models and AWS-managed infrastructure.
- **Geographical Locations:** Multi-region AWS deployments (US, EU, Asia-Pacific).
- **Key Stakeholders:** AWS Q Development team, AWS Security, AWS Compliance, Customer Success.

---

### 2.3 Offerings & Interfaces

Amazon Q Developer offers two primary interfaces, each optimized for specific user workflows:

#### A. IDE Plugin

- **Supported IDEs:** Visual Studio Code, JetBrains (IntelliJ, PyCharm), Eclipse (preview), Visual Studio, Cloud9.
- **Features:** Inline code suggestions, agentic chat commands, secret/vuln scanning, team rules, audit logs.
- **Authentication:** AWS Builder ID (Free), IAM Identity Center (Pro).  

#### B. Chat Interface

- **Channels:** AWS Console Q panel, AWS Chatbot (Slack/Teams), AWS CLI (`aws q chat`), GitHub/GitLab plugins.
- **Features:** Natural language Q&A, session history (Free: 30 days; Pro: configurable), workflow integrations.

*Use IDE plugin for code workflows; chat interfaces for operational queries.*

---

## 3. Intellectual Property Protection

- **Ownership & Licensing:** Customer retains all rights to prompts, outputs, and session content; AWS Service Terms govern platform use.
- **IP Protection Measures:** Pro tier guarantees no customer data used for model improvement; Service Terms include IP clauses.

Evidence:
- https://aws.amazon.com/service-terms/
- https://aws.amazon.com/q/developer/ (Content Ownership section)

---

## 4. Data Security & Encryption

### 4.1 Encryption at Rest

- AWS-managed storage uses AES-256 for persisted data (prompts, logs, telemetry).
- AWS KMS manages keys with automatic rotation.

Evidence: https://docs.aws.amazon.com/bedrock/latest/userguide/security.html#encryption-at-rest

### 4.2 Encryption in Transit

- All communications use TLS 1.2+; certificates via AWS Certificate Manager.

Evidence: https://docs.aws.amazon.com/bedrock/latest/userguide/security.html#transport-security

### 4.3 Access Control & Auditing

- Free: IAM user with MFA; Pro: SAML SSO via IAM Identity Center.
- Audit logs for all API calls and user interactions accessible via AWS CloudTrail.

Evidence:
- https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html
- https://aws.amazon.com/q/developer/ (Enterprise controls)

---

## 5. Data Lifecycle & Privacy

- **Retention:** Free: 30-day session logs; Pro: configurable retention.
- **Deletion:** Users can purge session data via console; backend purge within 30 days.
- **Residency:** Pro allows specifying storage region per session.
- **DSAR:** AWS data subject request process within 30 days.

Evidence:
- https://aws.amazon.com/q/developer/ (Privacy & telemetry)
- https://aws.amazon.com/compliance/data-privacy-faq/

---

## 6. AI & Model Training Practices

- Free Tier: telemetry may be used for model improvement.
- Pro Tier: telemetry disabled by default; no customer data in training.
- Telemetry pseudonymized prior to analysis.

Evidence: https://aws.amazon.com/bedrock/faqs/#data_usage

---

## 7. Security Certifications & Compliance

- SOC 2 Type II, ISO 27001/17/18, FedRAMP Moderate, PCI DSS, HIPAA Eligible.
- Compliance applies to AWS Q Developer and underlying Bedrock services.

Evidence: https://aws.amazon.com/compliance/programs/

---

## 8. Risk Management & Governance

- Aligned to NIST CSF and ISO 27005.
- Quarterly threat modeling; annual penetration tests.
- Continuous vulnerability scanning via AWS Security Hub.

Evidence: https://aws.amazon.com/security/

---

## 9. Incident Response & Disclosure

- IR plan per NIST SP 800-61; SOC 24/7 monitoring.
- Customer notifications within 24 hrs of breach detection.

Evidence: https://aws.amazon.com/security/security-bulletins/

---

## 10. Questions & Responses

1. **Encryption at rest?** AES-256, KMS-managed (4.1)
2. **Access logging?** CloudTrail logs all activity (4.3)
3. **Breach disclosure?** Notifications within 24 hrs (9)
4. **Certifications?** SOC 2, ISO, FedRAMP, PCI, HIPAA (7)
5. **Data deletion?** Console purge, 30-day backend purge (5)
6. **Training data usage?** Free: telemetry used; Pro: disabled (6)
7. **AI risk framework?** NIST CSF, ISO 27005 (8)

---

*End of Report*