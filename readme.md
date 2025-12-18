# Docker Installation step-by-step

### 1. Update packages
```
sudo apt update && sudo apt upgrade -y
```

### 2. Install required packages
```
sudo apt install -y ca-certificates curl gnupg lsb-release
```

### 3. Add Docker’s official GPG key
```
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

### 4. Set up the Docker repository
```
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

```

### 5. Install Docker Engine
```
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

### 6. Verify installation
```
docker --version
docker compose version
```

### 7. (Optional) Run Docker as non-root user
```
sudo usermod -aG docker $USER
```


# Si hay problemas con el volumen:
### Fix the permissions on the host directory:
```
sudo chown -R 1000:1000 /home/ubuntu/.n8n
```
### If the directory doesn't exist, create it first:
```
mkdir -p /home/ubuntu/.n8n
sudo chown -R 1000:1000 /home/ubuntu/.n8n
```
