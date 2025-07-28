# setup dev env on aws

# Copy tmux configuration
cp .tmux.conf ~/

# Update package lists
sudo apt-get update

# Install core packages
sudo apt-get install -y nodejs npm python3 python3-pip docker.io postgresql postgresql-contrib

# Install development tools
sudo apt-get install -y git curl wget build-essential tmux vim htop tree jq

# Install Android development tools
sudo apt-get install -y default-jdk android-tools-adb android-tools-fastboot

# Install browser
sudo apt-get install -y chromium-browser

# Install uv Python package manager
curl -LsSf https://astral.sh/uv/install.sh | sh

# Configure Docker
sudo usermod -aG docker $USER
sudo systemctl enable docker

# Install Claude Code
curl -fsSL https://github.com/anthropics/claude-code/releases/latest/download/install.sh | sh
