# Local AI Model Setup

## Overview
This project runs a local AI model using the Docker container `docker.io/ai/qwen3:8B-Q4_K_M`. The provided scripts manage model operations.

## Files
- `start-qwen.sh`: Starts the model using Docker
- `stop-qwen.sh`: Stops the running model

## How to Use

### Starting the Model
1. Ensure Docker is installed
2. Run `./start-qwen.sh` to launch the container
3. The model will be available via the Docker API

### Stopping the Model
1. Run `./stop-qwen.sh` to terminate the container

## Notes
- These scripts are designed for macOS systems
- The model uses Q4_K_M quantization for efficiency
- Monitor Docker logs for operational status

### Chatting with the Model
After starting the container, you can interact with the model via the terminal:
1. The model will be available via the Docker API
2. Type your queries and press Enter
3. To end the chat, use `Control+D` (EOF signal) or type `/bye` (note: `/bye` functionality is not confirmed)