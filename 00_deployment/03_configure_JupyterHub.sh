#Set JupyterHub configuration details
sudo tljh-config set services.cull.timeout 14400
sudo tljh-config set limits.memory 16G
sudo tljh-config set limits.cpu 1

#Set default interface for JupyterHub
sudo tljh-config set user_environment.default_app jupyterlab
#sudo tljh-config set user_environment.default_app nteract
#sudo tljh-config set user_environment.default_app classic

# Set HTTPS and use LetsEncrypt
sudo tljh-config set https.enabled true
sudo tljh-config set https.letsencrypt.email <USER EMAIL>
sudo tljh-config add-item https.letsencrypt.domains <REGISTERED HOSTNAME>
# This step is REQUIRED to have TLJH negotiate with LetsEncrypt
sudo tljh-config reload proxy

# # Alternative using provided SSL certs
# # Set HTTPS, requires SSL certs!
# sudo tljh-config set https.enabled true
# sudo tljh-config set https.tls.key /etc/letsencrypt/live/eduhub.cac.cornell.edu/privkey.pem
# sudo tljh-config set https.tls.cert /etc/letsencrypt/live/eduhub.cac.cornell.edu/cert.pem
# sudo tljh-config reload proxy

# Reboot system to make sure everything works
sudo reboot
