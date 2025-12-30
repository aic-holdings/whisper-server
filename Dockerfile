# Self-hosted faster-whisper-server for audio transcription
# OpenAI-compatible API at /v1/audio/transcriptions
#
# Based on: https://github.com/fedirz/faster-whisper-server

FROM fedirz/faster-whisper-server:latest-cpu

# Use tiny model for fast startup (smallest possible)
ENV WHISPER__MODEL=Systran/faster-whisper-tiny.en
ENV WHISPER__INFERENCE_DEVICE=cpu
ENV WHISPER__COMPUTE_TYPE=int8

# Server configuration
ENV UVICORN_HOST=0.0.0.0
ENV UVICORN_PORT=8000

# Disable health check temporarily to see startup logs
# HEALTHCHECK --interval=30s --timeout=10s --start-period=300s --retries=5 \
#   CMD curl -sf http://localhost:8000/health || exit 1

EXPOSE 8000
