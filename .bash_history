whoami
cd 1.0\ -\ Intro\ to\ Cloud\ Native\ \&\ Environment\ Setup/
ls -l
cat /etc/os-release
sudo apt update && sudo apt upgrade -y
sudo apt install -y docker.io
sudo systemctl status docker
apt list --installed
sudo usermod -aG docker $USER
groups $USER
sudo apt install -y git
sudo apt intall -y python3 python3-pip
sudo apt install -y python3 python3-pip
sudo apt install -y tmux
ls
cd student-project-tracker/
uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload
sudo apt install uvicorn
uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload
ls
source FastAPI_venv//bin/activate
uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload
pip install python-dotenv
uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload
export VAULT_ADDR="http://127.0.0.1:8200"
export VAULT_TOKEN='hvs.L9rGtidDCzVdxeZStPbCJedC'
vault auth enable approle
vault policy write student-app - <<EOF
path "secret/data/student01" {
  capabilities = ["read"]
}
EOF

vault write auth/approle/role/student-tracker     token_policies="student-app"     token_ttl=1h     token_max_ttl=4h
vault read auth/approle/role/student-tracker/role-id
vault write -f auth/approle/role/student-tracker/secret-id
vault secrets enable -path=secret kv-v2
vault kv put secret/student01 MONGO_URI="mongodb://localhost:27017"
vault kv get secret/student01
ls -al
mkdir -p "2.0 - Containerization with Docker [FASTAPI App]"
ls -l
cd 2.0\ -\ Containerization\ with\ Docker\ \[FASTAPI\ App\]/
ls -al
touch README.md
vi README.md 
git --version
git clone https://github.com/ChisomJude/student-project-tracker.git
ls -al
mkdir -p screenshots
cd screenshots/
ls -al
cd ..
ls -al
cd student-project-tracker/
python3 --version
python3 -m venv FastAPI_venv
sudo apt install python3.12-venv
python3 -m venv FastAPI_venv
source FASTAPI_venv/bin/activate
ls
source FastAPI_venv/bin/activate
ls
cat requirements.txt 
pip install -r requirements.txt 
ls -al
cd app
ls
cat main.py 
cd ..
uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload
ls -al
source FastAPI_venv/bin/activate
ls
cd app
ls 
vi database.py 
cd ..
sudo apt update
sudo apt install -y wget gpg
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt install vault
vault server -dev
ls
cd 2.0\ -\ Containerization\ with\ Docker\ \[FASTAPI\ App\]/
ls
vault server -dev
curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod
sudo systemctl status mongod
mongosh --eval 'db.runCommand("hello")'
mongosh
vault kv put secret/student01 MONGO_URI="mongodb://localhost:27017"
vault kv get secret/student01
docker login
docker login -u damilare1012
docker info
docker login
docker build -t dolatunj1012/student-tracker:latest .
docker images
docker push dolatunj1012/student-tracker:latest
docker login
docker push dolatunj1012/student-tracker:latest
cd ..
git init
git add .
git rm --cached 2.0 - Containerization with Docker [FASTAPI App]/student-project-tracker
uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload
ls
source FastAPI_venv/bin/activate
uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload
