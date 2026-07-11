# AWS DevOps Intern Assignment

## EC2 Setup Steps
1. Launched Ubuntu 22.04 EC2 instance (t2.micro)
2. Created security group `web-sg` allowing ports 22 (SSH) and 80 (HTTP)
3. Connected via SSH using key pair

## Nginx Installation
```bash
sudo apt update && sudo apt upgrade -y
sudo apt install nginx -y
sudo systemctl status nginx
sudo systemctl restart nginx
```

## Website Deployment
- Replaced `/var/www/html/index.html` with custom HTML page
- Verified site at http://3.110.46.230

## Commands Used
- `df -h` – disk usage
- `free -h` – memory usage
- `top` – running processes

## Public IP
http://3.110.46.230
