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


## Bonus Tasks (Completed: 2)

### 1. Shell Script to Restart Nginx
Created `restart_nginx.sh` — a shell script that restarts Nginx and displays its live status.

**Script:** `restart_nginx.sh`
```bash
#!/bin/bash
echo "=========================================="
echo "Restarting Nginx service..."
echo "=========================================="
sudo systemctl restart nginx

echo ""
echo "Checking Nginx status..."
sudo systemctl status nginx --no-pager

echo ""
echo "Nginx restart completed at: $(date)"
```

**Usage:**
```bash
chmod +x restart_nginx.sh
./restart_nginx.sh
```

### 2. Docker Installation & hello-world
Installed Docker on the EC2 instance and successfully ran the `hello-world` container to verify the installation.

**Commands used:**
```bash
sudo apt update
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker
sudo docker run hello-world
sudo usermod -aG docker ubuntu
```

**Result:** Docker container ran successfully and printed the "Hello from Docker!" confirmation message, verifying that the installation can pull images and run containers correctly.
