import random

def calcular_calorias(peso):
    mantenimiento = peso * 30
    return mantenimiento


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


def responder(pregunta: str):

    texto = pregunta.lower().strip()

    # saludo
    if "hola" in texto or "buenas" in texto:
        return "Hola soy Kairis, tu asistente virtual de nutrición."

    # calorías
    if "caloria" in texto:
        return "Las calorías representan la energía que aportan los alimentos al cuerpo y que este utiliza para sus funciones vitales."

    # proteínas
    if "proteina" in texto:
        return "Las proteínas ayudan al crecimiento, reparación y mantenimiento de los tejidos del cuerpo."

    # agradecimiento
    if "gracias" in texto:
        return "De nada, estoy aquí para ayudarte."

    # explicación de dieta
    if "que es una dieta" in texto or "dieta que es" in texto:
        return "Una dieta es el conjunto de alimentos y bebidas que una persona consume diariamente para mantener su salud y energía."

    # generar dieta
    if "dieta" in texto:

        partes = texto.split()

        for palabra in partes:

            if palabra.isdigit():

                peso = int(palabra)

                calorias = calcular_calorias(peso)

                return generar_dieta(calorias)

        return "Para generar una dieta escribe por ejemplo: dieta 70 (donde 70 es tu peso en kg)."

    return "Aún estoy aprendiendo. Pregúntame sobre calorías, proteínas o dietas."
