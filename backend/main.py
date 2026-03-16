from fastapi import FastAPI
from pydantic import BaseModel
from ai.kairis import responder

app = FastAPI()

class Pregunta(BaseModel):
    pregunta: str

# memoria simple de conversación
historial = []

@app.get("/kairis")
def inicio():
    return {"mensaje": "Kairis funcionando"}

@app.post("/kairis")
def pregunta(data: Pregunta):

    texto = data.pregunta

    # guardar pregunta del usuario
    historial.append({
        "usuario": texto
    })

    respuesta = responder(texto)

    # guardar respuesta de Kairis
    historial.append({
        "kairis": respuesta
    })

    # devolver respuesta y últimos mensajes
    return {
        "respuesta": respuesta,
        "historial": historial[-6:]
    }
