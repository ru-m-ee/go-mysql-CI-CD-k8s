# 🚀 Go + MySQL CRUD App | DevOps Practice Project

A complete DevOps practice project using:

- Golang REST API
- MySQL
- Docker
- Docker Compose
- GitHub Actions CI/CD
- Docker Hub
- Kubernetes (Minikube)

---

# 📌 Project Overview

This project demonstrates a full DevOps workflow from local development to Kubernetes deployment.

The application is a simple CRUD API built with Go and MySQL and deployed using containerized infrastructure.

---

# 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| Golang | Backend API |
| MySQL | Database |
| Docker | Containerization |
| Docker Compose | Local multi-container setup |
| GitHub Actions | CI/CD Pipeline |
| Docker Hub | Image Registry |
| Kubernetes | Container Orchestration |
| Minikube | Local Kubernetes Cluster |

---

# ⚙️ Features

✅ REST API with Golang  
✅ MySQL database integration  
✅ Multi-stage Docker build  
✅ Lightweight Alpine image  
✅ Docker Compose support  
✅ GitHub Actions CI/CD  
✅ Docker Hub image push  
✅ Kubernetes deployment  
✅ Stateful MySQL deployment  
✅ Persistent storage with PV/PVC  
✅ Namespace isolation  
✅ Headless Service for MySQL  
✅ NodePort Service for API access  

---

# 📂 Project Structure

```bash
.
├── .github/workflows/
│   └── ci-cd.yml
├── k8s/
│   ├── namespace.yaml
│   ├── secret.yaml
│   ├── mysql-pv.yaml
│   ├── mysql-pvc.yaml
│   ├── mysql-statefulset.yaml
│   ├── mysql-service.yaml
│   ├── app-deployment.yaml
│   └── app-service.yaml
├── Dockerfile
├── docker-compose.yml
├── .env
├── main.go
└── README.md




# go-mysql-crud
Sample crud operation using Golang and MySql

## API ENDPOINTS

### All Posts
- Path : `/posts`
- Method: `GET`
- Response: `200`

### Create Post
- Path : `/posts`
- Method: `POST`
- Fields: `title, content`
- Response: `201`

### Details a Post
- Path : `/posts/{id}`
- Method: `GET`
- Response: `200`

### Update Post
- Path : `/posts/{id}`
- Method: `PUT`
- Fields: `title, content`
- Response: `200`

### Delete Post
- Path : `/posts/{id}`
- Method: `DELETE`
- Response: `204`

## Required Packages
- Dependency management
    * [dep](https://github.com/golang/dep)
- Database
    * [MySql](https://github.com/go-sql-driver/mysql)
- Routing
    * [chi](https://github.com/go-chi/chi)

## Quick Run Project
First clone the repo then go to go-mysql-crud folder. After that build your image and run by docker. Make sure you have docker in your machine. 

```
git clone https://github.com/s1s1ty/go-mysql-crud.git

cd go-mysql-crud

chmod +x run.sh
./run.sh

docker-compose up
```

