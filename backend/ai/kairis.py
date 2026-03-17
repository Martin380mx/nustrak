import os
import json

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


# cargar conocimiento
with open("conocimiento.json", "r", encoding="utf-8") as f:
    conocimiento = json.load(f)


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

    return "Aún estoy aprendiendo. Pregúntame sobre nutrición, calorías o dietas."
