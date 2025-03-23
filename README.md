Docker Development Environment
This repository provides a Dockerized development environment for Node.js development using code-server, a browser-based version of Visual Studio Code. The setup includes a Node.js runtime, essential development tools, and pre-installed VS Code extensions for a seamless development experience.

Features
Node.js 22: Pre-installed Node.js environment for backend development.

code-server: Browser-based VS Code for remote development.

Pre-configured VS Code Extensions:

ESLint

Prettier

TypeScript

NPM IntelliSense

Path IntelliSense

REST Client

Docker Compose: Easy setup and management of the development environment.

Volume Mounting: Local files are synced with the container for real-time development.

Prerequisites
Before you begin, ensure you have the following installed on your system:

Docker: Install Docker

Docker Compose: Install Docker Compose

Getting Started
1. Clone the Repository
Clone this repository to your local machine:

bash
Copy
git clone https://github.com/ReindeerGames/docker-dev.git
cd docker-dev
2. Build and Run the Docker Container
Use Docker Compose to build and start the development environment:

bash
Copy
docker-compose up --build
This command will:

Build the Docker image using the provided Dockerfile.

Start the container with the configuration specified in docker-compose.yml.

3. Access code-server
Once the container is running, open your browser and navigate to:

Copy
http://localhost:8080
Log in using the default password:

Password: dev_password

You can change the password by modifying the config.yaml file before starting the container.

4. Access Your Node Application
Your Node.js application will be running on:

Copy
http://localhost:3000
The application code is located in the my-node-backend directory. You can start developing immediately.

Configuration
code-server Configuration
The code-server configuration is located in config.yaml. You can modify the following settings:

bind-addr: The address and port to bind to (default: 0.0.0.0:8080).

auth: Authentication method (default: password).

password: The password for accessing code-server (default: dev_password).

cert: Enable or disable HTTPS (default: false).

Node.js Application
The Node.js application is located in the my-node-backend directory. You can modify the application code directly, and changes will be reflected in real-time thanks to volume mounting.

Stopping the Container
To stop the container, run:

bash
Copy
docker-compose down
This will stop and remove the container while preserving your local files.

Customizing the Environment
Adding VS Code Extensions
To install additional VS Code extensions, modify the Dockerfile and add the following line:

Dockerfile
Copy
RUN code-server --install-extension <extension-id>
Rebuild the container after making changes:

bash
Copy
docker-compose up --build
Changing the Node.js Version
To use a different Node.js version, update the FROM line in the Dockerfile:

Dockerfile
Copy
FROM node:<desired-version>
License
This project is licensed under the MIT License. See the LICENSE file for details.

Contributing
Contributions are welcome! If you'd like to contribute, please follow these steps:

Fork the repository.

Create a new branch for your feature or bugfix.

Commit your changes.

Submit a pull request.

Support
If you encounter any issues or have questions, please open an issue on the GitHub repository.

Enjoy your Dockerized development environment! 🚀
