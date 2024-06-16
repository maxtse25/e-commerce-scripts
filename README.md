# Getting Started with Development

This section provides instructions on setting up the development environment using Docker. We use Docker to ensure consistency across various development environments and simplify the setup process.

## Prerequisites

Docker must be installed on your machine. If Docker is not installed, you can follow the [official Docker installation guide](https://docs.docker.com/get-docker/).

## Files Description

- **`Dockerfile`**: This file contains all the necessary instructions to build a Docker image for our application. The image includes the Node.js environment, installs all dependencies, and sets up the application to run on port 3000.

- **`setup_docker.sh`**: This shell script is used to automate the process of installing Docker on Ubuntu systems (specifically for WSL), starting the Docker service, building the Docker image from the Dockerfile, and running the container. The script simplifies the process to a single command execution.

## Using the Docker Setup Script

To use the `setup_docker.sh` script to set up Docker on your Ubuntu (WSL) and run the application, follow these steps:

1. **Clone the repository to your local machine:**

    ```bash
    git clone https://github.com/yourusername/yourproject.git
    cd yourproject
    ```

2. **Make the script executable:**

    ```bash
    chmod +x setup_docker.sh
    ```

3. **Run the script:**

    ```bash
    ./setup_docker.sh
    ```

This will install Docker (if not already installed), build the Docker image named `switchyourcase`, and start the container which serves the application on `localhost:3000`.
