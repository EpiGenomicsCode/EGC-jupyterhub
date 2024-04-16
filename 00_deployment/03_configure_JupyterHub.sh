#Set JupyterHub configuration details
sudo tljh-config set services.cull.timeout 14400
#sudo tljh-config set limits.memory 8G
#sudo tljh-config set limits.cpu 1

#Set default interface for JupyterHub
sudo tljh-config set user_environment.default_app jupyterlab
#sudo tljh-config set user_environment.default_app nteract
#sudo tljh-config set user_environment.default_app classic


# Reload TLJH
sudo tljh-config reload

