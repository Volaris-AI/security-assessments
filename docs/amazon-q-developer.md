### 2.3 Offerings & Interfaces

Amazon Q Developer provides two distinct interfaces tailored to different workflows:

#### A. IDE Plugin

- **Supported IDEs:** Visual Studio Code, JetBrains IDEs (IntelliJ, PyCharm, GoLand, WebStorm), Eclipse (preview), Visual Studio (via AWS Toolkit), AWS Cloud9, AWS Lambda console.
- **Agentic Coding Experience:** Amazon Q Developer can read/write files, execute commands, and maintain conversation history within the IDE session.
- **Key Features:**
  - Inline code suggestions (real-time completions to full functions)
  - Agentic chat commands (`/dev`, `/review`, `/test`, `/transform`) with workspace context prompts (`@workspace`, `@files`)
  - Integrated vulnerability and secret scanning in-editor
  - Custom team rules via `.amazonq/rules` directory
  - Code reference log for auditing suggestions against public code
- **Installation URLs:**
  - VS Code: https://marketplace.visualstudio.com/items?itemName=AmazonWebServices.amazon-q-vscode
  - JetBrains: https://plugins.jetbrains.com/plugin/24267-amazon-q/
  - Eclipse: https://marketplace.eclipse.org/content/amazon-q
  - Visual Studio: install via AWS Toolkit in Extension Manager
- **Authentication & Session:** Free Tier via AWS Builder ID or IAM user; Pro via AWS IAM Identity Center (90-day sessions)

#### B. Chat Interface

- **Channels:** AWS Console panel, AWS Chatbot (Teams, Slack), AWS CLI (`aws q chat`), AWS Console Mobile App, GitHub Enterprise Cloud (preview), GitLab Duo
- **Key Features:**
  - Natural language Q&A, architectural guidance, cost optimization, diagnostics
  - Configurable conversation history retention (Free Tier default 30 days, Pro configurable)
  - Notifications and alerts integrated into chat workflows
- **Access:** Enable Q Developer panel in AWS Console; configure AWS Chatbot integrations; use IDE plugins for GitHub/GitLab preview

*Use IDE plugins for code-centric development and agentic coding; use chat interfaces for broader conversational and operational queries.*

