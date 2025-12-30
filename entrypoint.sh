#!/bin/bash
echo "=== Whisper Server Starting ==="
echo "Model: $WHISPER__MODEL"
echo "Device: $WHISPER__INFERENCE_DEVICE"
echo "Compute type: $WHISPER__COMPUTE_TYPE"

# Try to start the server, capture any errors
python -m faster_whisper_server 2>&1

# If we get here, something went wrong
echo "Server exited with code: $?"
echo "Keeping container alive for debugging..."
sleep infinity
