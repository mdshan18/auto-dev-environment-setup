🛠️ Auto Developer Environment Setup Tool

**Infrastructure Automation using Chef Configuration Management**

[![Chef](https://img.shields.io/badge/Chef-Configuration%20Management-red)](https://www.chef.io/)
[![Python](https://img.shields.io/badge/Python-3.6%2B-blue)](https://www.python.org/)
[![Linux](https://img.shields.io/badge/Linux-Ubuntu%2FCentOS-green)](https://www.linux.com/)
[![License](https://img.shields.io/badge/License-MIT-yellow)](LICENSE)

---

## 📖 Overview

**Auto Developer Environment Setup Tool** is a comprehensive **Infrastructure as Code (IaC)** project that demonstrates core **DevOps automation practices** using **Chef configuration management**.

This tool automatically provisions a complete development environment by:
- Installing essential development tools (Git, Python, Java)
- Organizing project directories
- Capturing system information
- Verifying setup completion

**Perfect for:**
- ✅ Learning infrastructure automation
- ✅ Configuration management mastery
- ✅ DevOps practices in real-world scenarios
- ✅ Understanding Chef cookbooks and recipes

---

## 🎓 What This Project Teaches

### **DevOps Core Concepts:**

| Concept | Implementation |
|---------|-----------------|
| **Infrastructure as Code (IaC)** | Chef cookbooks define environment setup as code |
| **Configuration Management** | Automated, repeatable environment provisioning |
| **Idempotency** | Safe to run multiple times without side effects |
| **Automation** | Eliminates manual setup steps and human errors |
| **Version Control** | Git tracks all infrastructure changes |
| **Linux Mastery** | System-level operations and management |

### **Key Learning Outcomes:**

✅ **Infrastructure as Code** - Define infrastructure using declarative code
✅ **Chef Fundamentals** - Cookbooks, Recipes, Resources, Attributes
✅ **Configuration Management** - Managing system state consistently
✅ **Linux System Administration** - Package management, file systems
✅ **Python Scripting** - Writing verification and validation scripts
✅ **DevOps Workflow** - Version control, automation, testing
✅ **Best Practices** - Idempotent, reusable, maintainable code

---

## 🏗️ Architecture & How It Works
┌─────────────────────────────────────────────┐

│     Auto Dev Environment Setup Tool         │

├─────────────────────────────────────────────┤

│                                             │

│  1. User runs Chef Recipe                   │

│     └──> Loads configuration from metadata  │

│                                             │

│  2. Chef executes recipes in order          │

│     ├──> Installs Git                      │

│     ├──> Installs Python                   │

│     ├──> Installs Java (OpenJDK)           │

│     ├──> Creates project directories       │

│     ├──> Generates welcome file            │

│     └──> Captures Linux system info        │

│                                             │

│  3. Python Verification Script runs         │

│     └──> Validates all components          │

│                                             │

│  4. Success! Environment Ready ✅           │

│                                             │

└─────────────────────────────────────────────┘

---

## ✨ Key Features

| Feature | Details |
|---------|---------|
| **Git Installation** | Installs Git with configuration |
| **Python Setup** | Installs Python 3.x for scripting |
| **Java Installation** | Installs OpenJDK for development |
| **Auto Directory Creation** | Creates organized project structure |
| **System Information** | Captures and logs Linux system details |
| **Verification Script** | Python validates all installations |
| **Idempotent Execution** | Safe to run multiple times |
| **Version Controlled** | All changes tracked in Git |

---

## 🛠️ Technologies & Tools

| Technology | Purpose |
|-----------|---------|
| **Chef** | Configuration Management & Infrastructure Automation |
| **Ruby** | Chef Recipe Language |
| **Python 3** | Verification and Validation Scripts |
| **Linux (Ubuntu/CentOS)** | Target Operating System |
| **Git & GitHub** | Version Control |
| **Bash** | Shell scripting for automation |

---

## 📦 Project Structure
auto-dev-environment-setup/

│

├── cookbooks/

│   └── dev_setup/                    # Chef Cookbook

│       ├── recipes/

│       │   └── default.rb            # Main recipe

│       ├── attributes/

│       │   └── default.rb            # Configuration variables

│       └── metadata.rb               # Cookbook metadata

│

├── scripts/

│   └── verify_setup.py              # Verification script

│

├── .gitignore                        # Git ignore

├── README.md                         # This file

└── LICENSE                           # MIT License

---

## 📋 Prerequisites

```bash
✓ Linux System (Ubuntu 18.04+ or CentOS 7+)
✓ Chef Workstation installed
✓ Python 3.6 or higher
✓ Sudo/Root access for package installation
✓ Git installed
```

### **Check Prerequisites:**

```bash
chef -v
python3 --version
sudo -v
```

---

## 🚀 Installation & Setup

### **Step 1: Clone the Repository**

```bash
git clone https://github.com/mdshan18/auto-dev-environment-setup.git
cd auto-dev-environment-setup
```

### **Step 2: Review Chef Recipe**

```bash
cat cookbooks/dev_setup/recipes/default.rb
```

### **Step 3: Execute Chef Recipe**

```bash
sudo chef-apply cookbooks/dev_setup/recipes/default.rb
```

### **Step 4: Verify Installation**

```bash
python3 scripts/verify_setup.py
```

---

## 📊 Output Example

### **Before Execution:**
home/user/

├── Desktop/

├── Documents/

└── Downloads/

### **After Execution:**
home/user/

├── my-projects/                     # Auto-created

│   ├── welcome.txt                  # Created

│   └── system_info.txt              # System info captured

│

System Installed:

✓ git (version control)

✓ python3 (scripting)

✓ openjdk-11-jdk (Java)

---

## 🔧 Chef Concepts Explained

### **What is Chef?**

Chef is an **Infrastructure as Code (IaC)** tool that automates infrastructure provisioning and configuration management.

### **Key Components:**

**1. Cookbooks** - Collections of recipes and configurations
```ruby
cookbooks/dev_setup/  # Our cookbook
```

**2. Recipes** - Ruby files describing desired system state
```ruby
package 'git' do
  action :install
end
```

**3. Resources** - Building blocks performing actions
- `package` - Installs software
- `directory` - Creates directories
- `file` - Creates/manages files
- `execute` - Runs shell commands

**4. Idempotency** - Safe to run multiple times
```ruby
# First run: Installs Git
# Second run: Git already exists, skips
# Result: No errors, no reinstallation
```

---

## 💻 Usage & Workflow

```bash
# 1. Clone repository
git clone <repo-url>
cd auto-dev-environment-setup

# 2. Review changes
git log --oneline

# 3. Execute recipe
sudo chef-apply cookbooks/dev_setup/recipes/default.rb

# 4. Verify installation
python3 scripts/verify_setup.py

# 5. Commit changes
git add .
git commit -m "feat: execute and verify setup"
git push origin main
```

---

## ⚠️ Troubleshooting

### **Issue 1: Permission Denied**

```bash
✅ Solution: Use sudo
sudo chef-apply cookbooks/dev_setup/recipes/default.rb
```

### **Issue 2: Chef Not Found**

```bash
✅ Solution: Install Chef Workstation
# Visit: https://downloads.chef.io
chef -v  # Verify installation
```

### **Issue 3: Python Verification Failed**

```bash
✅ Solution: Check Python version
python3 --version
python3 scripts/verify_setup.py
```

---

## 🌟 Future Enhancements

- [ ] Docker Integration - Containerize setup
- [ ] Kubernetes Support - Deploy to K8s
- [ ] AWS/Cloud Providers - Provision instances
- [ ] Multiple OS Support - CentOS, Amazon Linux
- [ ] Custom Packages - npm, pip, gem support
- [ ] CI/CD Pipeline - GitHub Actions automation
- [ ] Testing - ChefSpec unit tests
- [ ] Monitoring - Prometheus integration

---

## 📚 Learning Resources

- [Chef Official Docs](https://docs.chef.io/)
- [Chef Resources Reference](https://docs.chef.io/resource/)
- [Infrastructure as Code Concepts](https://www.terraform.io/language)

---

## 🤝 Contributing

```bash
# Create feature branch
git checkout -b feature/add-docker-support

# Make changes to recipes
vim cookbooks/dev_setup/recipes/default.rb

# Test your changes
sudo chef-apply cookbooks/dev_setup/recipes/default.rb
python3 scripts/verify_setup.py

# Commit and push
git add .
git commit -m "feat: add docker installation"
git push origin feature/add-docker-support
```

---

## 📄 License

MIT License - See LICENSE file

---

## 👤 Author

**MD Shan**
- **Role:** DevOps Developer (Learning)
- **Email:** mdshanjgp@gmail.com
- **GitHub:** [@mdshan18](https://github.com/mdshan18)
- **Location:** Noida, Delhi NCR

---

## 🎯 DevOps Relevance

This project demonstrates **core DevOps principles:**

✅ **Infrastructure Automation** - Provisioning done automatically
✅ **Configuration Management** - Consistent setup across environments
✅ **Idempotency** - Safe and repeatable execution
✅ **Version Control** - Infrastructure tracked in Git
✅ **Best Practices** - Production-ready code patterns
✅ **Linux Mastery** - Deep system administration knowledge
✅ **Scalability** - Can provision single or multiple systems

---

## ⭐ Project Quality

| Metric | Value |
|--------|-------|
| **Difficulty Level** | Intermediate |
| **Learning Value** | ⭐⭐⭐⭐⭐ (5/5) |
| **Code Quality** | ⭐⭐⭐⭐ (4/5) |
| **Interview Value** | ⭐⭐⭐⭐⭐ (5/5) |

---

Made with ❤️ for DevOps Learning

Last Updated: June 2026
Status: ✅ Actively Maintained
Version: 1.0.0
