# 📜 Week 11 — Secrets Management with Vault

## 🎯 Project Overview
This week focused on eliminating hardcoded credentials from source code by integrating **HashiCorp Vault**. The project demonstrates how to securely store, retrieve, and rotate database credentials dynamically.

## 🛠️ Tech Stack
* **OS:** Kali Linux
* **Secrets Manager:** HashiCorp Vault (Dev Server)
* **Application:** Node.js (`node-vault` SDK)

## 📅 Task Breakdown
* **Monday:** Installed HashiCorp Vault and initialized the local development server.
* **Tuesday:** Authenticated the CLI and stored database credentials in the `secret/database` path using the KV engine.
* **Wednesday:** Developed a Node.js script to authenticate via API and retrieve the credentials dynamically at runtime.
* **Thursday:** Performed a secret rotation by updating the password in Vault, verifying the Node.js app instantly fetched the new credentials without code modifications.
* **Friday:** Documented the secure credential flow.

## 🔄 The Credential Flow
1. **Developer/Admin** injects secrets into Vault via CLI.
2. **Node.js App** initializes and authenticates with Vault using an access token.
3. **Node.js App** requests the payload from `secret/data/database`.
4. **Vault** serves the encrypted data back to the application in memory.

## 🚧 Troubleshooting & Issues Resolved
### NPM Cache Corruption (LRU Error)
* **Issue:** Attempting to run `npm init -y` resulted in a fatal crash: `npm error LRU is not a constructor`.
* **Cause:** The local Node Package Manager (npm) installation became corrupted and desynchronized from the Node.js binary.
* **Resolution:** Performed a complete purge and clean reinstall of the Node environment:
  ```bash
  sudo apt purge nodejs npm -y
  rm -rf ~/.npm ~/.nvm
  sudo apt install nodejs npm -y
