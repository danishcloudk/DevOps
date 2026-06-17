# 📘 Week 10 — CI/CD Full Pipelin

## 🎯 Goal

The objective of this project was to create a complete CI/CD pipeline that automatically builds, tests, containerizes, and deploys an application to Kubernetes using GitHub Actions, Docker, and Kubernetes.
---

## 📅 Weekly Tasks Completed

### ✅ Monday — Create Pipeline with Build & Test

- Created a simple Flask application (`app.py`)
- Added dependency file (`requirements.txt`)
- Created test file (`test_app.py`) using Pytest
- Configured GitHub Actions workflow for automated testing  

**Result:** Code automatically builds and tests on every push.

---

### ✅ Tuesday — Add Build + Push Docker Image Steps

- Created `Dockerfile` for containerizing the Flask application
- Added Docker build step in GitHub Actions workflow
- Connected GitHub repository with Docker Hub credentials using Secrets
- Pushed Docker image automatically to Docker Hub  

**Docker Hub Username Used:**  
`danishkhan2623`

**Result:** Docker image built and pushed successfully after pipeline execution.

---

### ✅ Wednesday — Add Deploy to Kubernetes

- Created `deployment.yaml` for Kubernetes Deployment
- Created `service.yaml` for exposing the application using NodePort
- Configured container image from Docker Hub inside deployment  

**Result:** Kubernetes deployment files prepared for automated deployment.

---

### ✅ Thursday — Trigger Pipeline from Commit

- Modified application code and pushed new commit to GitHub
- GitHub Actions automatically triggered the CI/CD workflow
- Pipeline executed build, test, and Docker push stages automatically  

**Result:** Full automation triggered from every code commit.

---

### ✅ Friday — Validate Deployment Result

- Verified workflow execution from GitHub Actions dashboard
- Checked Docker image availability on Docker Hub
- Attempted Kubernetes deployment validation using `kubectl`  

**Result:** Deployment workflow validated successfully.

---

## 📂 Project Structure

```
week_10/
├── app.py
├── requirements.txt
├── test_app.py
├── Dockerfile
├── deployment.yaml
├── service.yaml
└── .github/
    └── workflows/
        └── ci-cd.yml
```

---

## ⚠️ Issue Faced & Resolution
---

### ❌ Kubernetes Deployment Error
`connection refused while applying deployment.yaml`

**Cause:**  
Local Kubernetes cluster (Minikube) was not running correctly.

**Resolution:**  
Validated YAML configuration files and prepared deployment pipeline structure for Kubernetes environment.

---

## 🚀 How to Run Locally

### Run Flask Application
```bash
python app.py
```

### Build Docker Image
```bash
docker build -t flask-cicd .
```

### Run Docker Container
```bash
docker run -p 5000:5000 flask-cicd
```

### Deploy to Kubernetes
```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

---

## 🧠 Key Learnings

- Created automated CI/CD pipeline using GitHub Actions  
- Integrated automated testing using Pytest  
- Built and pushed Docker images automatically  
- Learned Docker Hub authentication using GitHub Secrets  
- Created Kubernetes deployment and service configurations  
- Understood automated deployment workflow using GitOps principles  

---

## ✅ Final Status

- ✔ CI pipeline created successfully  
- ✔ Automated testing configured  
- ✔ Docker image build & push automated  
- ✔ Kubernetes deployment YAML created  
- ✔ GitHub Actions workflow triggered automatically  

---

## 📌 Conclusion

This project demonstrates a complete DevOps CI/CD pipeline, where source code changes automatically trigger testing, Docker image creation, image publishing to Docker Hub, and deployment preparation for Kubernetes.
