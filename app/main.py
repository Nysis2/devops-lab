import socket

from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def root():
    return {"message": "Hello World", "hostname": socket.gethostname()}

@app.get("/healthz")
def healthz():
    return {"status": "ok"}