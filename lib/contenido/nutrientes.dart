import 'package:flutter/material.dart';

class NutrientesPage extends StatelessWidget {
  const NutrientesPage({super.key});

  Widget tarjetaTitulo(String titulo) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 10),
      child: Text(
        titulo,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget tarjetaContenido(String texto) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 5,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 16,
          height: 1.5,
        ),
      ),
    );
  }

  Widget tarjetaLista(String titulo, List<String> items, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ...items.map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Row(
                children: [
                  const Icon(Icons.circle, size: 8),
                  const SizedBox(width: 8),
                  Expanded(child: Text(item)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nutrientes"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// INTRODUCCION
            tarjetaTitulo("¿Qué son los nutrientes?"),

            tarjetaContenido(
              "Los nutrientes son sustancias químicas presentes en los "
              "alimentos que el cuerpo necesita para vivir, crecer y "
              "mantenerse saludable. Estos permiten obtener energía, "
              "reparar tejidos, regular procesos del organismo y "
              "fortalecer el sistema inmunológico."
            ),

            /// FUNCIONES
            tarjetaLista(
              "Funciones principales",
              [
                "Proporcionar energía al organismo",
                "Favorecer el crecimiento y desarrollo",
                "Reparar tejidos y células",
                "Regular procesos metabólicos",
                "Fortalecer el sistema inmunológico",
                "Mantener el equilibrio del organismo"
              ],
              const Color(0xFFE3F2FD),
            ),

            /// CLASIFICACION
            tarjetaTitulo("Clasificación de los nutrientes"),

            tarjetaContenido(
              "Los nutrientes se clasifican según la cantidad que el "
              "organismo necesita y la función que cumplen dentro del "
              "cuerpo humano."
            ),

            tarjetaLista(
              "Macronutrientes",
              [
                "Carbohidratos → principal fuente de energía",
                "Proteínas → ayudan a construir y reparar tejidos",
                "Grasas → almacenan energía y protegen órganos"
              ],
              const Color(0xFFE8F5E9),
            ),

            tarjetaLista(
              "Micronutrientes",
              [
                "Vitaminas → regulan funciones del organismo",
                "Minerales → participan en procesos celulares",
                "Se necesitan en pequeñas cantidades"
              ],
              const Color(0xFFFFF3E0),
            ),

            /// EJEMPLOS
            tarjetaLista(
              "Ejemplos de alimentos con nutrientes",
              [
                "Frutas y verduras → vitaminas y minerales",
                "Carne, huevo y pescado → proteínas",
                "Cereales y pan → carbohidratos",
                "Aceites y aguacate → grasas saludables",
                "Leche y derivados → calcio y proteínas"
              ],
              const Color(0xFFF3E5F5),
            ),

            /// IMPORTANCIA
            Container(
              padding: const EdgeInsets.all(18),
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: const Color(0xFFE8F5E9),
                borderRadius: BorderRadius.circular(12),
              ),

              child: const Column(
                children: [

                  Icon(
                    Icons.health_and_safety,
                    size: 40,
                    color: Colors.green,
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Importancia de los nutrientes",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Una alimentación equilibrada proporciona todos los "
                    "nutrientes necesarios para mantener una buena salud, "
                    "prevenir enfermedades y asegurar el correcto "
                    "funcionamiento del organismo.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
