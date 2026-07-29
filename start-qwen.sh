#!/bin/bash
set -e

#MODEL_NAME="ai/qwen3.5:9B-UD-Q4_K_XL"
#MODEL_NAME="ai/glm-4.7-flash:31B-UD-Q4_K_XL"
#MODEL_NAME="ai/glm-4.7-flash:31B-UD-Q4_K_XL"
#MODEL_NAME="ai/qwen3:30B-A3B-Q4_K_M"
MODEL_NAME="ai/qwen3:8B-Q4_K_M"
PORT=12434

echo "Pruefe ob Docker laeuft..."
if ! docker info > /dev/null 2>&1; then
  echo "Docker Desktop ist nicht gestartet. Bitte oeffne Docker Desktop und starte dieses Script erneut."
  exit 1
fi

echo "Aktiviere Docker Model Runner (falls noch nicht aktiv)..."
docker desktop enable model-runner --tcp=$PORT 2>/dev/null || true

echo "Lade $MODEL_NAME (falls noch nicht lokal vorhanden)..."
docker model pull $MODEL_NAME

echo "Starte Qwen $MODEL_NAME..."
docker model run $MODEL_NAME

echo ""
echo "Fertig! Modell laeuft ueber eine OpenAI-kompatible API auf:"
echo "http://localhost:$PORT/engines/v1"
echo "Für ZooCode kannst du das Lokale Modell eingeben: docker.io/ai/$MODEL_NAME"
echo ""
echo "Zum Beenden: ./stop-qwen.sh"
