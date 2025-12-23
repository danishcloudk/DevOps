# 🔐 Week 4 – Container Registry & Image Security

## 📌 Project Title

**Secure Flask Container Workflow**

## 🎯 Goal

Learn how to use a container registry, scan Docker images for vulnerabilities, fix security issues, and generate a security report following DevOps best practices.

---

## 🧰 Technologies Used

* Docker
* Docker Hub (Private Repository)
* Flask (Python Web Application)
* Trivy (Image Security Scanner)
* Kali Linux

---

## 📁 Project Structure

```
week_4/
├── app.py
├── requirements.txt
├── Dockerfile
└── security-report.txt
```
---

## 📅 Weekly Task Breakdown

---

## ✅ Day 1 – Create Private Registry Repository

* Created a **private repository** on Docker Hub
* Repository Name: `secure-flask-app`
* Visibility set to **Private**

📌 Purpose: Secure image storage and controlled access

---

## ✅ Day 2 – Build & Push Docker Image (With Tags)

* Created a modern Flask application
* Dockerized the application using a Dockerfile
* Built the Docker image locally
* Tagged the image with version and `latest` tags
* Pushed the image to Docker Hub private repository

📌 Tags Used:

* `1.0`
* `latest`

---

## ✅ Day 3 – Image Vulnerability Scanning

* Installed **Trivy** security scanner
* Scanned Docker image for vulnerabilities
* Generated a vulnerability report

📄 Output saved in:

```
security-report.txt
```

📌 Vulnerabilities included LOW and MEDIUM severity issues

---

## ✅ Day 4 – Fix Security Issues & Rebuild Image

* Optimized Docker image:

  * Used slim base image
  * Removed unnecessary cache
  * Pinned dependency versions
* Rebuilt Docker image with improved security
* Pushed updated image with a new tag

📌 New Tag:

* `2.0`

---

## ✅ Day 5 – Security Report & Summary

* Reviewed Trivy scan results
* Documented security improvements
* Generated final security report
---

## 👤 Author

**Danish Khan**
DevOps & Cloud Computing Student

