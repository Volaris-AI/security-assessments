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

| Tier                 | Encryption at Rest   | Encryption in Transit | Data Used for Training                  | IP Protection          | Enterprise Controls                                                    | Evidence URLs                                                                                          |
|----------------------|----------------------|-----------------------|-----------------------------------------|------------------------|-------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------|
| Free Tier            | AES-256 (inherited)  | TLS 1.2+              | Yes (prompts may be used for improvement)| AWS Service Terms apply | No SSO, no SLA, default telemetry settings                              | <https://aws.amazon.com/q/>, <https://aws.amazon.com/free>                                                |
| Pro Subscription     | AES-256 (inherited)  | TLS 1.2+              | No (opt-out enforced for Pro)          | AWS Service Terms apply | SAML SSO via AWS IAM Identity Center, audit logging, configurable telemetry | https://aws.amazon.com/q/developer/, https://aws.amazon.com/q/developer/pricing/                     |

*Include URLs to official docs and reference screenshots where needed.*

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

- **Supported IDEs:**
  - Visual Studio Code, JetBrains IDEs (IntelliJ, PyCharm, GoLand, WebStorm), Eclipse (preview), Visual Studio (via AWS Toolkit), AWS Cloud9, AWS Lambda console.
- **Features:**
  - Inline code suggestions from snippets to full functions.
  - Agentic chat commands (`/dev`, `/review`, `/test`, `/transform`) with workspace context via `@workspace` and `@files` prompts.
  - Integrated vulnerability and secret scanning directly in the editor.
  - Customizable team rules via `.amazonq/rules` directory.
  - Code reference log for auditing suggestions against public code.
- **Installation & Authentication:**
  - VS Code: https://marketplace.visualstudio.com/items?itemName=AmazonWebServices.amazon-q-vscode
  - JetBrains: https://plugins.jetbrains.com/plugin/24267-amazon-q/
  - Eclipse: https://marketplace.eclipse.org/content/amazon-q
  - Visual Studio: via AWS Toolkit extension manager
  - Free Tier authentication: AWS Builder ID or IAM user
  - Pro Tier authentication: AWS IAM Identity Center (90-day sessions)

#### B. Chat Interface

- **Channels:** AWS Management Console panel, AWS Chatbot (Microsoft Teams, Slack), AWS CLI (`aws q chat`), AWS Console Mobile App, GitHub Enterprise Cloud (preview), GitLab Duo.
- **Features:**
  - Natural language Q&A for AWS services, architectural guidance, cost optimization, and diagnostics.
  - Persistent session history (Free: 30-day retention; Pro: configurable retention).
  - Integration with notifications, alerts, and automated workflows.
- **Access & Setup:**
  - AWS Console: enable Q panel in the sidebar
  - AWS Chatbot: configure Amazon Q Developer in Teams/Slack via AWS Chatbot settings
  - CLI: use `aws q chat` command
  - GitHub/GitLab: install preview plugins or workflows

*Use the IDE plugin for code-centric development and agentic coding; use chat interfaces for broader conversational and operational queries.*

---

## 3. Intellectual Property Protection

- **Ownership & Licensing:**
  - Amazon Q Developer is proprietary AWS software governed by the AWS Service Terms.
  - Underlying foundation models licensed via AWS Bedrock agreements.
- **IP Protection Measures:**
  - AWS Service Terms define IP rights; customer content remains owned by the customer.
  - Pro subscription guarantees no customer content used for service improvement.

Evidence:
- URL: https://aws.amazon.com/service-terms/
- URL: https://aws.amazon.com/q/developer/ ("Your content is yours")

---

## 4. Data Security & Encryption

### 4.1 Encryption at Rest

- AWS-managed storage uses AES-256 encryption for persisted Q Developer data (prompts, logs, telemetry).
- Keys managed by AWS KMS with automatic rotation.

Evidence:
- URL: https://docs.aws.amazon.com/bedrock/latest/userguide/security.html#encryption-at-rest

### 4.2 Encryption in Transit

- All communications secured via TLS 1.2+.
- Certificates provisioned through AWS Certificate Manager.

Evidence:
- URL: https://docs.aws.amazon.com/bedrock/latest/userguide/security.html#transport-security

### 4.3 Access Control & Auditing

- Free Tier: IAM user with MFA; Pro: SAML SSO via AWS IAM Identity Center.
- Audit logs capture all API calls, chat interactions, and code scans; logs viewable in AWS CloudTrail.

Evidence:
- URL: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html
- URL: https://aws.amazon.com/q/developer/ (Enterprise controls section)

---

## 5. Data Lifecycle & Privacy

- **Data Retention Policy:** Free Tier data retained 30 days; Pro Tier data retention configurable via AWS Console.
- **Deletion & Purging:** Users can delete session history and telemetry via AWS Q settings; backend purge within 30 days.
- **Data Residency Controls:** Pro Tier allows specifying storage region.
- **Data Deletion on Request:** AWS Data Subject Request procedures apply; completed within 30 days with proof.

Evidence:
- URL: https://aws.amazon.com/q/developer/ (Privacy and telemetry section)
- URL: https://aws.amazon.com/compliance/data-privacy-faq/

---

## 6. AI & Model Training Practices

- Free Tier telemetry may be used for AWS Bedrock model improvement.
- Pro Tier disables service-improvement telemetry; customer data not used in training.
- All telemetry pseudonymized before any analysis.

Evidence:
- URL: https://aws.amazon.com/bedrock/faqs/#data_usage

---

## 7. Security Certifications & Compliance

- SOC 2 Type II (covers AWS Q services)
- ISO 27001, ISO 27017, ISO 27018
- FedRAMP Moderate (in AWS GovCloud regions)
- PCI DSS, HIPAA Eligible

Evidence:
- URL: https://aws.amazon.com/compliance/programs/

---

## 8. Risk Management & Governance

- Follows NIST Cybersecurity Framework and ISO 27005.
- Threat modeling and security reviews each quarter.
- Annual third-party penetration tests; continuous internal assessments.

Evidence:
- URL: https://aws.amazon.com/security/

---

## 9. Incident Response & Disclosure

- IR plan aligned to NIST SP 800-61.
- 24/7 Security Operations Center monitoring; incident triage within 1 hour.
- Customer notifications within SLA (24 hrs); public bulletins for major incidents.

Evidence:
- URL: https://aws.amazon.com/security/security-bulletins/

---

## 10. Questions & Responses

1. **To what extent is conversation data encrypted at rest?**
   - AES-256 at rest, AWS KMS-managed keys with rotation. (Evidence: 4.1)

2. **To what extent is access to conversation data logged and auditable?**
   - All interactions logged in AWS CloudTrail, retained per policy. (Evidence: 4.3)

3. **What are the vendor’s procedures for disclosing unauthorized access?**
   - IR plan triggers notifications within 24 hrs, public bulletins. (Evidence: 9)

4. **What security/compliance certifications do they have? Scope?**
   - SOC 2, ISO 27001/17/18, FedRAMP, PCI DSS, HIPAA; covers Q Developer, Bedrock, underlying services. (Evidence: 7)

5. **Can conversation data be deleted upon request? How?**
   - Yes; via AWS console; purge within 30 days under DSAR process. (Evidence: 5)

6. **To what extent is data used to train underlying models?**
   - Free Tier: telemetry used; Pro Tier: telemetry disabled. (Evidence: 6)

7. **What framework addresses AI-related risks?**
   - NIST CSF, ISO 27005, threat modeling, red teaming. (Evidence: 8)

---

*End of Report*