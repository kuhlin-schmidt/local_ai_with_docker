# Local AI Model Setup

## Overview
This project runs a local AI model using the Docker container `docker.io/ai/qwen3:8B-Q4_K_M`. The provided scripts manage model operations. The model itself is not a very powerful one. If you have a better GPU than my standard one in my MacbookPro M5 then feel free use a more powerful model. you can browser them at [https://hub.docker.com/u/ai](https://hub.docker.com/u/ai)

## Files
- `start-qwen.sh`: Starts the model using Docker
- `stop-qwen.sh`: Stops the running model

## How to Use

### Starting the Model
1. Ensure Docker is installed
1. Ensure the script is executable by running `chmod +x start-qwen.sh`
1. Run `./start-qwen.sh` to launch the container
1. The model will be available via the Docker API

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
## VSCode Plugin Configuration
I use the VSCODE plugin ZooCode and configure my local AI model like this:

| Feld         | Wert                                                          |
| ------------ | ------------------------------------------------------------- |
| API Provider | OpenAI Compatible                                             |
| Base URL     | http://localhost:12434/engines/v1                             |
| API Key      | Platzhalter "not-needed" |
| Model ID     | docker.io/ai/qwen3:8B-Q4_K_M  (das modell aus der start-qwen.sh)                                           |