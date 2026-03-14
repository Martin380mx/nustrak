import random

def generar_dieta():

    desayunos = [
        "Avena con fruta y yogurt",
        "Huevos revueltos con pan integral",
        "Licuado de plátano con avena",
        "Tostadas integrales con aguacate"
    ]

    comidas = [
        "Pechuga de pollo con arroz y verduras",
        "Pescado a la plancha con ensalada",
        "Carne magra con quinoa y vegetales",
        "Tacos de pollo con verduras"
    ]

    cenas = [
        "Ensalada con atún",
        "Omelette de verduras",
        "Yogurt natural con fruta",
        "Sopa de verduras con pollo"
    ]

    return f"""
Dieta recomendada:

Desayuno:
{random.choice(desayunos)}

Comida:
{random.choice(comidas)}

Cena:
{random.choice(cenas)}

Recuerda mantener buena hidratación y balancear tus macronutrientes.
"""
def responder(pregunta: str):
    texto = pregunta.lower()
    
    if "hola" in texto or "buenas" in texto:
        return "Hola soy Kairis, tu asistente virtual de estudios. En que puedo ayudarte?"
    
    if "Que son las calorias" in texto:
        return "Las calorias representan la energia que aportan los alimentos aportan al cuerpo y la que este consume en sus funciones vitales, fisicas y metabolicas. Para mantener un peso saludable, es importante equilibrar las calorias consumidas con las calorias quemadas a través de la actividad fisica y el metabolismo basal. Quieres que te mande ejemplos basicos de calorias en alimentos comunes?"
    if "Si" in texto:
        return "Claro, aqui tienes algunos ejemplos basicos de calorias en alimentos comunes: \n- Una manzana mediana tiene aproximadamente 95 calorias. \n- Un huevo grande tiene alrededor de 70 calorias. \n- Una rebanada de pan integral tiene aproximadamente 80 calorias. \n- Un vaso de leche entera (240 ml) contiene alrededor de 150 calorias. \n- Una porcion de arroz blanco (1 taza cocida) tiene aproximadamente 200 calorias."
    if "gracias" in texto:
        return "De nada, estoy aqui para ayudarte con tus preguntas sobre nutricion y calorias. Si tienes alguna otra pregunta, no dudes en hacerla!"
    
    if "proteina" in texto:
        return "Las proteinas son macronutrientes escensiales formados por cadenas de aminoácidos, fundamentales para la estructura, funcion y regulacion de los tejidos, músculos y órganos del cuerpo. Son esenciales para el crecimiento, reparación y mantenimiento de los tejidos, ademas de ser una fuente importante de energia. Las proteinas se encuentran en alimentos como carnes, pescados, huevos, legumbres, frutos secos y productos lácteos. Es importante consumir una cantidad adecuada de proteinas para mantener una buena salud y un funcionamiento óptimo del cuerpo. Quieres que te de puntos clave sobre las proteinas?"
    if "Si" in texto or "si" in texto:
        return "Claro, aqui tienes algunos puntos clave sobre las proteinas: \n- Su funcion estructural son las células, tejidos, musculos, piel, cabello y uñas. \n- Las proteinas se encuentran en alimentos como carnes, pescados, huevos, legumbres, frutos secos y productos lácteos. \n- Es importante consumir una cantidad adecuada de proteinas para mantener una buena salud y un funcionamiento óptimo del cuerpo."
    if "gracias" in texto:
        return "De nada, estoy aqui para ayudarte con tus preguntas sobre nutricion y proteinas. Si tienes alguna otra pregunta, no dudes en hacerla!"
    
    if "Que es una dieta?" in texto:
        return "Una dieta es el conjunto de alimentos y bebidas que una persona consume regularmente. Puede referirse a un plan específico de alimentación diseñado para alcanzar ciertos objetivos de salud, como perder peso, ganar masa muscular o mejorar la salud en general. Las dietas pueden variar ampliamente en términos de los tipos de alimentos permitidos, las cantidades y las restricciones. Es importante elegir una dieta equilibrada y sostenible que se adapte a tus necesidades individuales y preferencias alimentarias. Quieres que te de ejemplos de dietas populares?"
    
    return "Lo lamento, sigue adquiriendo mas conocimientos para estar mejor preparado para la proxima vez que nos veamos"