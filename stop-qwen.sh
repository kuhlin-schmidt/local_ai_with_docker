#!/bin/bash
set -e

echo "Stoppe Docker Model Runner..."
docker desktop disable model-runner 

echo "Fertig. Der Runner-Container wurde gestoppt (das Modell selbst bleibt auf der Festplatte)."
echo "Naechstes Mal einfach ./start-qwen.sh erneut ausfuehren."
