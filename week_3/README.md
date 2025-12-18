# Week 3 — Containerization (Docker)

## 🎯 Goal
Containerize an existing Python application using Docker and deploy it locally and on Docker Hub.

## 🖥️ OS
Kali Linux

## 📁 Project Structure

- `app.py` — Main Python application  
- `test_app.py` — Test cases for the app  
- `Dockerfile` — Docker instructions to build image  
- `docker-compose.yml` — Multi-container setup (App + Database)  
- `README.md` — Project documentation  
- `.github/workflows/` — CI workflow files (optional)

---

## 🐳 Day-wise Steps

### Day 1 — Install Docker & Pull Sample Image
- Install Docker on Kali Linux  
- Start and enable Docker service  
- Verify Docker installation  
- Pull and run a sample Docker image to confirm setup

---

### Day 2 — Write Dockerfile
- Create Dockerfile in project root  
- Use Python base image  
- Copy app files into container  
- Install required Python dependencies  
- Define command to run the app inside container

---

### Day 3 — Build & Run Container Locally
- Build Docker image from Dockerfile  
- Check if the image is created successfully  
- Run container locally to verify app output

---

### Day 4 — Push Image to Docker Hub
- Login to Docker Hub  
- Tag local Docker image for your Docker Hub repository  
- Push image to Docker Hub for public/remote access

---

### Day 5 — docker-compose (App + Database)
- Create docker-compose file for multi-container setup  
- Define services: App and MySQL database  
- Run containers together using docker-compose  
- Stop containers when done

---

