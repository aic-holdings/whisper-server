from fastapi import FastAPI

app = FastAPI()

@app.get("/health")
def health():
    return {"status": "ok", "service": "whisper-server-test"}

@app.get("/")
def root():
    return {"message": "Whisper server placeholder - real implementation pending"}
