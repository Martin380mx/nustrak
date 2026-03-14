from fastapi import FastAPI
from pydantic import BaseModel
from backend.ai.kairis import responder

app = FastAPI()

class Pregunta(BaseModel):
    pregunta: str


@app.get("/kairis")
def inicio():
    return {"mensaje": "Kairis funcionando"}


@app.post("/kairis")
def pregunta(data: Pregunta):
    respuesta = responder(data.pregunta)
    return {"respuesta": respuesta}
