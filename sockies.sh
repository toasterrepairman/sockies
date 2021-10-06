# Install basic tools
sudo pacman -S openssh yay micro fish 

# Enable remote access
sudo systemctl status sshd.service

# setting fish to default shell
sudo chsh -s /bin/fish

# Download podman dependencies
sudo yay -S podman cockpit-podman cockpit-machines cockpit-podman

# Set up directory structure 
cd ~/Documents/
mkdir Code Books Cloud
cd Code/ 
mkdir Rust Shell Python
cd