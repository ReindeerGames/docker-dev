# Docker Development Environment
This repository provides a Dockerized development environment for Node.js development using `code-server`, a browser-based version of Visual Studio Code. The setup includes a Node.js runtime, essential development tools, and pre-installed VS Code extensions for a seamless development experience.
Section 2: Features
text

Collapse

Wrap

Copy
## Features
- **Node.js 22**: Pre-installed Node.js environment for backend development.  
- **code-server**: Browser-based VS Code for remote development.  
- **Pre-configured VS Code Extensions**:  
  - ESLint  
  - Prettier  
  - TypeScript  
  - NPM IntelliSense  
  - Path IntelliSense  
  - REST Client  
- **Docker Compose**: Easy setup and management of the development environment.  
- **Volume Mounting**: Local files are synced with the container for real-time development.
Section 3: Prerequisites
text

Collapse

Wrap

Copy
## Prerequisites
Before you begin, ensure you have the following installed on your system:  
- **Docker**: [Install Docker](https://docs.docker.com/get-docker/)  
- **Docker Compose**: [Install Docker Compose](https://docs.docker.com/compose/install/)
Section 4: Getting Started - Clone the Repository
text

Collapse

Wrap

Copy
## Getting Started

### Clone the Repository
Clone this repository to your local machine:
```bash
git clone https://github.com/ReindeerGames/docker-dev.git
cd docker-dev
text

Collapse

Wrap

Copy

### Section 5: Getting Started - Build and Run the Docker Container
Build and Run the Docker Container
Use Docker Compose to build and start the development environment:

bash

Collapse

Wrap

Copy
docker-compose up --build
This command will:

Build the Docker image using the provided Dockerfile.
Start the container with the configuration specified in docker-compose.yml.
text

Collapse

Wrap

Copy

### Section 6: Getting Started - Access code-server
Access code-server
Once the container is running, open your browser and navigate to:

text

Collapse

Wrap

Copy
http://localhost:8080
Log in using the default password:

Password: dev_password
You can change the password by modifying the config.yaml file before starting the container.
text

Collapse

Wrap

Copy

### Section 7: Getting Started - Access Your Node Application
Access Your Node Application
Your Node.js application will be running on:

text

Collapse

Wrap

Copy
http://localhost:3000
The application code is located in the my-node-backend directory. You can start developing immediately.

text

Collapse

Wrap

Copy

### Section 8: Configuration - code-server Configuration
Configuration
code-server Configuration
The code-server configuration is located in config.yaml. You can modify the following settings:

bind-addr: The address and port to bind to (default: 0.0.0.0:8080).
auth: Authentication method (default: password).
password: The password for accessing code-server (default: dev_password).
cert: Enable or disable HTTPS (default: false).
text

Collapse

Wrap

Copy

### Section 9: Configuration - Node.js Application
Node.js Application
The Node.js application is located in the my-node-backend directory. You can modify the application code directly, and changes will be reflected in real-time thanks to volume mounting.

text

Collapse

Wrap

Copy

### Section 10: Configuration - Stopping the Container
Stopping the Container
To stop the container, run:

bash

Collapse

Wrap

Copy
docker-compose down
This will stop and remove the container while preserving your local files.

text

Collapse

Wrap

Copy

### Section 11: Customizing the Environment - Adding VS Code Extensions
Customizing the Environment
Adding VS Code Extensions
To install additional VS Code extensions, modify the Dockerfile and add the following line:

Dockerfile

Collapse

Wrap

Copy
RUN code-server --install-extension <extension-name>
Rebuild the container after making changes:

bash

Collapse

Wrap

Copy
docker-compose up --build
text

Collapse

Wrap

Copy

### Section 12: Customizing the Environment - Changing the Node.js Version
Changing the Node.js Version
To use a different Node.js version, update the FROM line in the Dockerfile:

Dockerfile

Collapse

Wrap

Copy
FROM node:<version>
text

Collapse

Wrap

Copy

### Section 13: License
License
This project is licensed under the MIT License. See the LICENSE file for details.

text

Collapse

Wrap

Copy

### Section 14: Contributing
Contributing
Contributions are welcome! If you'd like to contribute, please follow these steps:

Fork the repository.
Create a new branch for your feature or bugfix.
Commit your changes.
Submit a pull request.
text

Collapse

Wrap

Copy

### Section 15: Support
Support
If you encounter any issues or have questions, please open an issue on the GitHub repository.

text

Collapse

Wrap

Copy

### Section 16: Closing Remark
