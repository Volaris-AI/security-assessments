# Security Governance Report: Anthropic Claude Code

*Based on the Security Governance Report Template*

---

## 1. Executive Summary

- **Vendor Name:** Anthropic PBC
- **Product/Service:** Claude Code
- **Product Summary:** Claude Code is a local developer CLI and SDK that integrates a secure Anthropic foundation model to edit, analyze, and transform code. It supports multi-language code completion, bug fixes, test generation, repository search, and safe web browsing via extensible tools.
- **Assessment Date:** 2025-06-19
- **Prepared By:** [Your Name]
- **Purpose of Assessment:** Evaluate the security governance posture of Claude Code and its AI tool integrations to inform adoption decisions.

This report covers security controls, data protection, training policies, compliance certifications, and risk governance for Claude Code.

---

## 2. Vendor Overview

### 2.1 Product Capabilities & Feature Availability

- **Local Code Editing & Fixes**
  - File read/write operations with explicit user permission per action
  - Patch generation, lint/autofix, and guided code reviews
- **Testing & CI Automation**
  - Unit and integration test creation/fixing via `/test` commands
- **Repository Search & Navigation**
  - `git grep`, history analysis, merge conflict resolution
- **Web Search & Documentation**
  - Secure web browsing with explicit approval, isolated sandbox
- **Plugin SDK**
  - Build custom tools via Node.js SDK, granular scope and IAM-based auth

### 2.2 Product Details

- **Deployment Model:** Local CLI and SDK installed via npm; model inference over HTTPS to Anthropic API (or Bedrock/Vertex with reduced telemetry)
- **Geographical Locations:** Data passes through Anthropic-hosted inference endpoints in multiple AWS regions; China access via partner endpoints
- **Key Stakeholders:** Engineering and Security teams at Anthropic; Developer and DevOps users building on Claude Code

---

## 3. Intellectual Property Protection

- **Code Ownership:** All user code remains local; Claude Code does not retain or share source files unless explicitly sent via `/bug` or feedback
- **Model IP:** Anthropic retains model weights and API intellectual property; no local caching of weights

Evidence URLs:
- https://docs.anthropic.com/en/docs/claude-code/overview

---

## 4. Data Security & Encryption

### 4.1 Encryption in Transit

- All CLI–API communications secured with TLS 1.2+; HSTS enforced
- Web search and MCP calls via HTTPS with certificate validation

### 4.2 Encryption at Rest

- No user data stored on Anthropic servers by default (zero retention orgs)
- Feedback transcripts encrypted at rest (AES-256) for 30 days only

Evidence URLs:
- https://docs.anthropic.com/en/docs/claude-code/data-usage

---

## 5. Data Lifecycle & Privacy

- **Default Retention:** Server retains chat transcripts 30 days (configurable via zero retention flag)
- **Local Sessions:** CLI caches sessions locally for 30 days, user-configurable
- **Feedback Transcripts:** Stored 30 days for debugging; not used to train generative models
- **Opt-Out Controls:** `DISABLE_TELEMETRY`, `DISABLE_ERROR_REPORTING`, `DISABLE_BUG_COMMAND`, `CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC`

Evidence URLs:
- https://docs.anthropic.com/en/docs/claude-code/data-usage

---

## 6. AI & Model Training Practices

- **Default Policy:** No training on prompts or code sent to Claude Code; models are frozen foundation models
- **Partner Program Opt-In:** Customers may join Development Partner Program to share data for training
- **Synthetic Data:** Models updated with synthetic, anonymized traces via internal processes

Evidence URLs:
- https://docs.anthropic.com/en/docs/claude-code/data-usage

---

## 7. Security Certifications & Compliance

- **SOC 2 Type II** (API services)
- **ISO 27001, ISO 27017, ISO 27018** certificates available
- **GDPR, CCPA Compliance** via Trust Center policies

Evidence URLs:
- https://trust.anthropic.com

---

## 8. Risk Management & Governance

- **Permission-Based Architecture:** Default read-only; write/execute operations require explicit approval
- **Built-In Protections:** Prompt injection mitigations, command blocklists (`curl`, `wget`), context-aware analysis
- **Telemetry & Error Monitoring:** Statsig (metrics), Sentry (errors), optional VPN/Proxy support
- **Secure Defaults:** Nonessential traffic off for Bedrock/Vertex; uniform behavior across providers

Evidence URLs:
- https://docs.anthropic.com/en/docs/claude-code/security

---

## 9. Incident Response & Disclosure

- **Reporting Channels:** `/bug` command; HackerOne VDP program
- **Response:** Encrypted transcript collection on `/bug`, automated triage, SOC-led incident handling
- **Transparency:** Security advisories via Trust Center

Evidence URLs:
- https://hackerone.com/anthropic-vdp
- https://trust.anthropic.com/security

---

## 10. Questions & Responses

1. **Is user code ever stored or used to train models?**
   - No. By default, Claude Code does not train models on user prompts or code; only anonymized feedback is used if opted in.
2. **How is local vs. cloud data differentiated?**
   - All code editing happens locally; inference payloads sent over TLS, no permanent caching on server.
3. **What telemetry is collected and how is it protected?**
   - Operational metrics (no code paths) via Statsig; errors via Sentry; both encrypted in transit and at rest.
4. **How are command permissions enforced?**
   - CLI prompts for each file/write/cmd; protected by built-in prompt system with user authorization.
5. **What compliance standards apply?**
   - SOC 2 Type II, ISO 27001 certifications and GDPR/CCPA controls documented in Trust Center.

---

*End of Report*