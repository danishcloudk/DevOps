# ☸️ Week 5 – Kubernetes Fundamentals

## 📌 Project Title

**Deploying a Containerized Application on Kubernetes**

---

## 🎯 Goal

To understand Kubernetes basics by deploying a Dockerized application on a local Kubernetes cluster using **Minikube**, exposing it via a **NodePort Service**, and performing **rolling updates**.

---

## 🛠 Tools & Environment

* OS: Kali Linux
* Docker
* Minikube
* kubectl
* Docker Hub (image created in Week 4)

---

## 📁 Project Structure

```
week_5/
├── deployment.yaml
├── service.yaml
├── README.md
└── screenshots
```

---

## 📅 Day-Wise Task Execution

---

## ✅ Day 1 – Install & Start Kubernetes Cluster

### Tasks Performed:

* Installed `kubectl`
* Installed `minikube`
* Started Kubernetes cluster using Docker driver
* Verified cluster status

### Verification Command:

```
kubectl get nodes
```

### Outcome:

* Minikube cluster running successfully
* Kubernetes node in **Ready** state

---

## ✅ Day 2 – Create Deployment (deployment.yaml)

### Tasks Performed:

* Created `deployment.yaml`
* Defined:

  * Deployment name
  * Replica count
  * Container image (from Docker Hub)
  * Container port

### Applied Deployment:

```
kubectl apply -f deployment.yaml
```

### Verification:

```
kubectl get deployments
kubectl get pods
```

---

## ✅ Day 3 – Create Service (service.yaml)

### Tasks Performed:

* Created `service.yaml`
* Service type: **NodePort**
* Exposed application to external access

### Applied Service:

```
kubectl apply -f service.yaml
```

### Verification:

```
kubectl get services
```

---

## ✅ Day 4 – Access Application via Browser

### Tasks Performed:

* Retrieved Minikube IP
* Accessed application using NodePort

### Access Method:

```
http://<minikube-ip>:30007
```

OR

```
minikube service flask-service
```

### Outcome:

* Application successfully accessible in browser

---

## ✅ Day 5 – Rolling Update (Update Image)

### Tasks Performed:

* Updated deployment image to a new version
* Observed rolling update without downtime

Commands Used:
```
kubectl set image deployment/flask-deployment \
flask-container=danishkhan2623/secure-flask-app:2.0
```

```
kubectl rollout status deployment/flask-deployment
```


## 👤 Author

**Danish Khan**
DevOps & Cloud Computing Student

