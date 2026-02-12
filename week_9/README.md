# 📜 Week 9 — Centralized Logging Stack (ELK)

## 🎯 Project Overview
The goal of this week was to build a **Centralized Logging System** using the **ELK Stack**. This architecture allows DevOps engineers to collect logs from various sources, process them into a readable format, and visualize them on a real-time dashboard.

## 🛠️ Infrastructure Stack
* **Platform:** Kali Linux
* **Containerization:** Docker & Docker Compose
* **Datastore:** Elasticsearch (v8.7.1)
* **Visualizer:** Kibana
* **Processor:** Logstash
* **Protocol:** TCP/JSON Ingestion

---

## 📅 Daily Task Breakdown

### ✅ Monday: Elasticsearch Deployment
* Adjusted host kernel settings (`vm.max_map_count`) to handle Elasticsearch's memory requirements.
* Deployed the Elasticsearch container as the primary data storage engine.
* **Verification:** Verified cluster health via `curl http://localhost:9200`.

### ✅ Tuesday: Kibana Visualization Layer
* Added the Kibana container to the stack.
* Configured environment variables to establish a handshake between Kibana and Elasticsearch.
* **Access:** Web interface successfully launched at `http://localhost:5601`.

### ✅ Wednesday: Logstash Pipeline Configuration
* Developed a `logstash.conf` file to define the data flow.
* Set up a **TCP Input** on port `5000` with a JSON codec.
* Configured dynamic indexing to organize logs by date (e.g., `app-logs-2026.02.12`).

### ✅ Thursday: Log Ingestion & Testing
* Performed manual log injection using `netcat` and `curl`.
* Successfully routed raw JSON data from the Kali terminal through Logstash into the Elasticsearch database.

### ✅ Friday: Dashboard Creation
* Created **Index Patterns** within Kibana to track the `app-logs-*` database.
* Designed a visual dashboard featuring Pie Charts and Data Tables to monitor real-time log levels.

---

## 🚀 Deployment Instructions

### 1. System Requirement
Run this command on your Kali host to prevent Elasticsearch from crashing:
```bash
sudo sysctl -w vm.max_map_count=262144

## 2. Start the Stack
* Navigate to the project folder and run
docker-compose up -d

## 3. Service Access Ports
* Service	URL             	Usage
Kibana   	http://localhost:5601	Main Dashboard UI
Elasticsearch	http://localhost:9200	Backend Storage API
Logstash	localhost:5000	        Log Ingestion Port
