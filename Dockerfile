# Self-hosted faster-whisper-server for audio transcription
# OpenAI-compatible API at /v1/audio/transcriptions

FROM fedirz/faster-whisper-server:latest-cpu

# Use whisper-large-v3-turbo for best speed/accuracy balance
ENV WHISPER__MODEL=Systran/faster-whisper-large-v3-turbo
ENV WHISPER__INFERENCE_DEVICE=cpu
ENV WHISPER__COMPUTE_TYPE=int8

# Expose the API port
EXPOSE 8000
