# 📊 Week 8 — Monitoring & Logging (Prometheus & Grafana)

## 🎯 Goal
The objective of this project was to deploy a full-stack observability solution using **Prometheus**, **Grafana**, and **Node Exporter**. This setup allows for real-time tracking of system metrics (CPU, RAM, Disk, Network) using a containerized environment.

## 🛠️ Tech Stack
* **OS:** Kali Linux
* **Orchestration:** Docker Compose
* **Monitoring Engine:** Prometheus
* **Visualization:** Grafana
* **Metrics Collector:** Node Exporter

---

## 📅 Weekly Tasks Completed

### ✅ Monday — Docker-Compose with Prometheus
* Initialized the project structure and defined the `prometheus.yml` configuration.
* Launched Prometheus as the core time-series database.

### ✅ Tuesday — Add Grafana Service
* Integrated Grafana into the orchestration for data visualization.
* Configured automated data source linking to Prometheus.

### ✅ Wednesday — Install Node Exporter
* Deployed Node Exporter to capture host-level hardware and OS metrics.
* Established the scrape job in Prometheus to collect data from port `9100`.

### ✅ Thursday — Create Dashboard
* Imported the **Node Exporter Full** dashboard (ID: 1860).
* Custom-configured panels for real-time CPU and Memory monitoring.

### ✅ Friday — Documentation & Workflow
* Verified end-to-end data pipeline and documented the setup.

---

## 🚀 How to Run

1. **Launch the Stack:**
   ```bash
   docker-compose up -d
