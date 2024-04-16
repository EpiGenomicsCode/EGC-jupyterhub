# Install JupyterHub depdencies
sudo apt install python3 python3-dev git curl

# Install JupyterHub
curl -L https://tljh.jupyter.org/bootstrap.py | sudo -E python3 - --admin admin

# Install R-dependencies
sudo apt install r-base r-base-dev -y

