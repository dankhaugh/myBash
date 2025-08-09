# setup dev env on aws

# Copy tmux configuration
cp .tmux.conf ~/

# Copy gitconfig if it doesn't exist
if [ ! -f ~/.gitconfig ]; then
    echo "Copying .gitconfig to home directory..."
    cp .gitconfig ~/
    echo ".gitconfig copied successfully"
else
    echo ".gitconfig already exists in home directory, skipping..."
fi

# Copy vimrc if it doesn't exist
if [ ! -f ~/.vimrc ]; then
    echo "Copying .vimrc to home directory..."
    cp .vimrc ~/
    echo ".vimrc copied successfully"
else
    echo ".vimrc already exists in home directory, skipping..."
fi

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

# Update package lists
sudo apt-get update

# Install core packages
sudo apt-get install -y nodejs npm python3 python3-pip docker.io postgresql postgresql-contrib

npm install -g pnpm

# Install development tools
sudo apt-get install -y git curl wget build-essential tmux vim htop tree jq

# Install Android development tools
sudo apt-get install -y default-jdk android-tools-adb android-tools-fastboot

# Install browser
# sudo apt-get install -y chromium-browser

# Install uv Python package manager
curl -LsSf https://astral.sh/uv/install.sh | sh

# Configure Docker
sudo usermod -aG docker $USER
sudo systemctl enable docker

# Install Claude Code
curl -fsSL https://github.com/anthropics/claude-code/releases/latest/download/install.sh | sh

# Re-source RC file to make claude command available
source "$RC_FILE"

# Add MCP servers
claude mcp add --transport http context7 https://mcp.context7.com/mcp
claude mcp add serena -- uvx --from git+https://github.com/oraios/serena serena-mcp-server --context ide-assistant --project $(pwd)


# install github and setup
sagi gh
gh auth login 
gh auth setup-git

# allow merging
git config --global core.editor "vim"
git config pull.rebase false
