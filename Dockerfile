# Minimal test to verify Coolify deployment works
FROM python:3.11-slim

# Explicitly disable health checks - let Coolify/Traefik handle it
HEALTHCHECK NONE

RUN pip install --no-cache-dir fastapi uvicorn

COPY main.py /app/main.py

WORKDIR /app
EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
