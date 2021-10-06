# [BASIC SETUP]
# Install basic tools
sudo pacman -S openssh yay micro fish ufw qemu

# Enable SSH
sudo ufw allow ssh

# Download network virtualization dependencies
sudo pacman -Syu ebtables dnsmasq
sudo systemctl restart libvirtd

# Download podman dependencies
yay -S podman cockpit-podman cockpit-machines cockpit-podman

# Enable services
sudo systemctl enable sshd.service
sudo systemctl enable cockpit

sudo systemctl start sshd.service
sudo systemctl start cockpit

# Setting fish to default shell
sudo chsh -s /bin/fish

# Installing netdata
bash <(curl -Ss https://my-netdata.io/kickstart.sh) — dont-wait

# Set up directory structure 
cd ~/Documents/
mkdir Code Books Cloud
cd Code/ 
mkdir Rust Shell Python
cd

# [PODMAN SETUP]
# Login to dockerhub
podman login -u toasterrepairman

# Install grafana
podman pull grafana/grafana

# Install prometheus
podman pull prom/prometheus

# Boot containers
# podman run -d --name=grafana -p 3000:3000 grafana/grafana