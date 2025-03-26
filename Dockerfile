FROM node:22

# Install essential tools
RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    gnupg \
    lsb-release \
    sudo \
    zsh \
    vim \
    unzip \
    openssh-client \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set environment variables
ENV HOME=/home/node
WORKDIR /home/node/project

# Install code-server
RUN curl -fsSL https://code-server.dev/install.sh | sh

# Install useful VS Code extensions
RUN code-server --install-extension dbaeumer.vscode-eslint \
    --install-extension esbenp.prettier-vscode \
    --install-extension ms-vscode.vscode-typescript-next \
    --install-extension christian-kohler.npm-intellisense \
    --install-extension christian-kohler.path-intellisense \
    --install-extension humao.rest-client

# Configure code-server directly in the Dockerfile
RUN mkdir -p /home/node/.config/code-server
RUN echo "bind-addr: 0.0.0.0:8080\nauth: password\npassword: 'dev_password'\ncert: false" > /home/node/.config/code-server/config.yaml

# Create project directory and set permissions
RUN mkdir -p /home/node/project && chown -R node:node /home/node

# Switch to non-root user
USER node

# Expose code-server port
EXPOSE 8080

# Start code-server
CMD ["code-server", "--host", "0.0.0.0", "--port", "8080", "/home/node/project"]
