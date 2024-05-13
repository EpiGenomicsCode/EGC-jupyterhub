## Become root
#sudo su -

# Add users
adduser wkl29
# Add sudo rights
usermod -aG sudo wkl29

# Allow for password entry during SSH
sed -i.bak 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config.d/60-cloudimg-settings.conf

# Restart system for SSH changes to take effect
systemctl restart sshd
