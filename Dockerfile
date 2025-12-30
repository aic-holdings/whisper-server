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

# Debug wrapper
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8000

ENTRYPOINT ["/entrypoint.sh"]
