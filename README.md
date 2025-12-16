# Portfolio Website CI/CD using Jenkins and Docker

This repository contains a sample **portfolio website** built using **HTML, CSS, and JavaScript**, containerized with **Docker**, and deployed automatically using a **Jenkins CI/CD pipeline**.

## Project Title

**Create and Deploy a Sample Portfolio Website using HTML, CSS, JavaScript with Docker and Jenkins CI/CD Pipeline**

---

## 1. Project Overview

This project demonstrates an end-to-end DevOps CI/CD implementation where a static portfolio website built using **HTML, CSS, and JavaScript** is containerized using **Docker** and automatically built and deployed using a **Jenkins pipeline**. Jenkins acts as an automation agent to fetch code, build a Docker image, and deploy the application.

The goal of this project is to showcase real-time DevOps skills including version control, containerization, CI/CD pipelines, and automated deployment.

---

## 2. Objectives

* Develop a responsive portfolio website using HTML, CSS, and JavaScript
* Containerize the application using Docker
* Configure Jenkins to automate build and deployment
* Implement a Jenkins pipeline (Jenkinsfile)
* Deploy the application as a Docker container

---

## 3. Technologies Used

* **Frontend:** HTML, CSS, JavaScript
* **Version Control:** Git & GitHub
* **CI/CD Tool:** Jenkins
* **Containerization:** Docker
* **Web Server:** Nginx
* **Operating System:** Linux (Jenkins Server)

---

## 4. Project Architecture

```
Developer → GitHub Repository → Jenkins Pipeline → Docker Build → Docker Container → Portfolio Website
```

---

## 5. Project Structure

```
portfolio-project/
│
├── index.html
├── style.css
├── script.js
├── Dockerfile
├── Jenkinsfile
└── README.md
```

---

## 6. Portfolio Website Description

The portfolio website contains:

* Home section with personal introduction
* Skills section
* Projects section
* Contact information

The website is responsive and styled using CSS with basic interactivity using JavaScript.

---

## 7. Docker Implementation

### Dockerfile

```dockerfile
FROM nginx:alpine
COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
```

### Explanation

* Uses lightweight **Nginx Alpine image**
* Copies website files to Nginx web directory
* Exposes port 80
* Runs Nginx in foreground

---

## 8. Jenkins Pipeline Implementation

### Jenkinsfile

```groovy
pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/your-username/portfolio-project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t portfolio-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker rm -f portfolio-container || true'
                sh 'docker run -d -p 8080:80 --name portfolio-container portfolio-app'
            }
        }
    }
}
```

---

## 9. Jenkins Configuration Steps

1. Install Jenkins on Linux server
2. Install required plugins:

   * Git Plugin
   * Pipeline Plugin
   * Docker Pipeline Plugin
3. Configure Docker on Jenkins server
4. Grant Jenkins permission to run Docker commands
5. Create a new Jenkins Pipeline job
6. Connect GitHub repository
7. Add Jenkinsfile to repository

---

## 10. Deployment Process

* Developer pushes code to GitHub
* Jenkins automatically triggers the pipeline
* Jenkins checks out code
* Docker image is built
* Existing container is stopped (if any)
* New container is deployed
* Portfolio website is accessible via browser

**URL:** `http://<server-ip>:8080`

---

## 11. Key Features

* Automated CI/CD pipeline
* Docker-based deployment
* Zero manual intervention
* Fast and reliable builds
* Easy scalability

---

## 12. Challenges Faced

* Docker permission issues with Jenkins
* Port conflicts during container deployment
* Jenkins agent configuration

---

## 13. Solutions Implemented

* Added Jenkins user to Docker group
* Implemented container cleanup before deployment
* Used declarative Jenkins pipeline

---

## 14. Outcome

Successfully implemented a complete CI/CD pipeline using Jenkins and Docker to deploy a static portfolio website. This project demonstrates real-world DevOps practices and automation skills.

---

## 15. Future Enhancements

* Add GitHub Webhooks
* Implement HTTPS using Nginx
* Deploy on Kubernetes
* Integrate monitoring tools

---

## 16. Conclusion

This project provides hands-on experience with Jenkins pipelines, Docker containerization, and automated deployments. It is suitable for showcasing DevOps skills in interviews and real-world scenarios.

