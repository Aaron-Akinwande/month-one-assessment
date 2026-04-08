# 🚀 TechCorp AWS Infrastructure Deployment (Terraform)

## 📌 Overview

This project provisions a secure, highly available web application infrastructure on AWS using Terraform. The architecture follows best practices including network isolation, load balancing, and controlled administrative access.

---

## 🏗️ Architecture Summary

* Custom VPC (10.0.0.0/16)
* 2 Public Subnets (for ALB and Bastion Host)
* 2 Private Subnets (for Web and Database servers)
* Internet Gateway and NAT Gateways
* Bastion Host for secure SSH access
* Application Load Balancer for traffic distribution
* 2 Web Servers (Apache)
* 1 Database Server (PostgreSQL)

---

## 🔐 Security Design

* Bastion Host: SSH access restricted to my IP
* Web Servers:

  * HTTP access only via Load Balancer
  * SSH access only from Bastion Host
* Database Server:

  * PostgreSQL access only from Web Servers
  * SSH access only from Bastion Host

---

## ⚙️ Technologies Used

* Terraform
* AWS (EC2, VPC, ALB, NAT Gateway, Security Groups)
* Linux (Amazon Linux 2)
* Bash (User Data Scripts)

---

## 🚀 Deployment Steps

### 1. Clone Repository

```
git clone https://github.com/YOUR_USERNAME/month-one-assessment.git
cd month-one-assessment
```

### 2. Configure Variables

Create a `terraform.tfvars` file:

```
region = "us-east-1"
instance_type_web     = "t3.micro"
instance_type_db      = "t3.small"
instance_type_bastion = "t3.micro"
my_ip   = "YOUR_IP/32"
key_name = "YOUR_KEY_NAME"
```

### 3. Initialize Terraform

```
terraform init
```

### 4. Plan Deployment

```
terraform plan
```

### 5. Apply Configuration

```
terraform apply
```

---

## 🌐 Accessing the Application

* Use the ALB DNS output to access the web application
* Refresh the page to see traffic distributed across instances

---

## 🔑 SSH Access

```
ssh -i your-key.pem ec2-user@<bastion-public-ip>
```

From Bastion:

```
ssh ec2-user@<private-ip>
```

---

## 🧹 Cleanup

```
terraform destroy
```

---

## ⚠️ Notes

* NAT Gateways are deployed per availability zone for high availability
* Database is deployed in a single AZ for simplicity; production systems should use multi-AZ solutions like Amazon RDS

---

## 📸 Evidence

Screenshots are included in the `evidence/` folder demonstrating successful deployment and access.

---
