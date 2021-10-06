# Install basic tools
sudo pacman -S openssh yay micro fish 

# Enable remote access
sudo systemctl status sshd.service

# Setting fish to default shell
sudo chsh -s /bin/fish

# Installing netdata
bash <(curl -Ss https://my-netdata.io/kickstart.sh) — dont-wait

# Download podman dependencies
yay -S podman cockpit-podman cockpit-machines cockpit-podman

# Set up directory structure 
cd ~/Documents/
mkdir Code Books Cloud
cd Code/ 
mkdir Rust Shell Python
cd