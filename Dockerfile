# Minimal test to see if container starts at all
FROM python:3.11-slim

RUN pip install --no-cache-dir fastapi uvicorn

COPY main.py /app/main.py

WORKDIR /app
EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
