# 📘 Week 7 — Configuration Management (Ansible)

## 🎯 Goal
The objective of this project was to automate system configuration and application deployment using **Ansible**, reducing manual setup and ensuring consistent provisioning across Linux systems.

## 🛠️ Tech Stack
* **OS:** Kali Linux
* **Automation Tool:** Ansible (ansible-core 2.x)
* **Target Host:** Localhost
* **Connection Type:** Local
* **Privilege Escalation:** `sudo` (become)
* **Web Server:** Nginx / Apache
* **Template Engine:** Jinja2

## 📅 Weekly Tasks Completed

### ✅ Monday — Install Ansible & Create Inventory
* Installed Ansible on Kali Linux using `apt`.
* Created `inventory.ini` to define the localhost configuration.
* Verified Ansible connectivity using the `ping` module.

### ✅ Tuesday — Write Playbook to Install Packages
* Created the main Ansible playbook (`playbook.yml`).
* Automated the installation of the web server using the `apt` module.
* Configured privilege escalation using `become: yes` to allow administrative changes.

### ✅ Wednesday — Add Role to Deploy Source Code
* Structured the project using **Ansible Roles** for modularity.
* Created `roles/web_deploy` to handle specific application logic.
* Added tasks to deploy static application files to the web root directory.

### ✅ Thursday — Add Configuration Template
* Developed a dynamic **Jinja2 template** (`.j2`) for the web configuration.
* Used the Ansible `template` module to push custom configurations.
* Implemented **Handlers** to restart the web service only when configuration changes are detected.

### ✅ Friday — Run Playbook & Documentation
* Executed the complete automation workflow end-to-end.
* Successfully managed system permissions and verified the web service was reachable.
* Documented the modular structure for future scalability.

---

## 🚀 How to Execute

To run this automation on your local machine, use the following command:

```bash
ansible-playbook -i inventory.ini playbook.yml --ask-become-pass
