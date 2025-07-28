# setup dev env on aws

# Copy tmux configuration
cp .tmux.conf ~/

# Detect shell and set RC file
if [[ "$SHELL" == *"zsh"* ]]; then
    RC_FILE="$HOME/.zshrc"
    echo "Detected zsh shell, using ~/.zshrc"
elif [[ "$SHELL" == *"bash"* ]]; then
    RC_FILE="$HOME/.bashrc"
    echo "Detected bash shell, using ~/.bashrc"
else
    RC_FILE="$HOME/.bashrc"
    echo "Unknown shell, defaulting to ~/.bashrc"
fi

# Add aliases idempotently using marker comments
MARKER_START="# === MYBASH ALIASES START ==="
MARKER_END="# === MYBASH ALIASES END ==="

if grep -q "$MARKER_START" "$RC_FILE" 2>/dev/null; then
    echo "Aliases already installed in $RC_FILE, skipping..."
else
    echo "Adding aliases to $RC_FILE..."
    echo "" >> "$RC_FILE"
    echo "$MARKER_START" >> "$RC_FILE"
    cat aliases >> "$RC_FILE"
    echo "$MARKER_END" >> "$RC_FILE"
    echo "Aliases successfully added to $RC_FILE"
fi

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
