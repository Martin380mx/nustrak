import json
import os
import wikipedia
import openai

wikipedia.set_lang("es")

BASE_DIR = os.path.dirname(__file__)
ruta = os.path.join(BASE_DIR, "conocimiento.json")

with open(ruta, "r", encoding="utf-8") as f:
    conocimiento = json.load(f)


def calcular_calorias(peso):
    return peso * 30


def generar_dieta(calorias):

    desayuno = "Avena con leche + 1 plátano + 1 huevo"
    comida = "150g pollo + 1 taza arroz + verduras"
    cena = "Ensalada con atún + 2 tostadas integrales"

    return f"""
Dieta ejemplo ({calorias} kcal aprox):

Desayuno
{desayuno}

Comida
{comida}

Cena
{cena}
"""


def buscar_wikipedia(pregunta):

    try:
        resultado = wikipedia.summary(pregunta, sentences=2)
        return resultado
    except:
        return None


def responder(pregunta: str):

    texto = pregunta.lower()

    for tema in conocimiento:

        palabras = conocimiento[tema]["palabras"]

        for palabra in palabras:

            if palabra in texto:

                if palabra == "dieta":

                    partes = texto.split()

                    for p in partes:

                        if p.isdigit():

                            peso = int(p)

                            calorias = calcular_calorias(peso)

                            return generar_dieta(calorias)

                    return "Para generar una dieta escribe: dieta 70 (donde 70 es tu peso en kg)."

                return conocimiento[tema]["respuesta"]

    # 🔎 buscar en wikipedia si no sabe
    respuesta = buscar_wikipedia(pregunta)

    if respuesta:
        return respuesta

    return "Aún estoy aprendiendo. Intenta preguntarme sobre nutrición."
