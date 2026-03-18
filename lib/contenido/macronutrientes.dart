import 'package:flutter/material.dart';

class MacronutrientesPage extends StatelessWidget {
  const MacronutrientesPage({super.key});

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
        title: const Text("Macronutrientes"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          
            tarjetaTitulo("¿Qué son los macronutrientes?"),

            tarjetaContenido(
              "Los macronutrientes son nutrientes que el organismo "
              "necesita en grandes cantidades para funcionar "
              "correctamente. Estos proporcionan la mayor parte "
              "de la energía que el cuerpo utiliza para realizar "
              "sus actividades diarias."
            ),

            
            tarjetaLista(
              "Tipos de macronutrientes",
              [
                "Carbohidratos → principal fuente de energía",
                "Proteínas → construcción y reparación de tejidos",
                "Grasas → reserva de energía y protección de órganos"
              ],
              const Color(0xFFE3F2FD),
            ),

           
            tarjetaLista(
              "Carbohidratos",
              [
                "Principal fuente de energía del organismo",
                "Se encuentran en cereales, pan, arroz y pasta",
                "También están en frutas y verduras",
                "El cuerpo los convierte en glucosa"
              ],
              const Color(0xFFE8F5E9),
            ),

            
            tarjetaLista(
              "Proteínas",
              [
                "Forman músculos, piel y órganos",
                "Ayudan al crecimiento del cuerpo",
                "Reparan tejidos dañados",
                "Se encuentran en carne, huevo, pescado y legumbres"
              ],
              const Color(0xFFFFF3E0),
            ),

            
            tarjetaLista(
              "Grasas",
              [
                "Proporcionan energía almacenada",
                "Protegen órganos del cuerpo",
                "Ayudan a absorber vitaminas A, D, E y K",
                "Se encuentran en aceites, aguacate y frutos secos"
              ],
              const Color(0xFFF3E5F5),
            ),

           
            tarjetaLista(
              "Funciones principales",
              [
                "Proporcionar energía al organismo",
                "Permitir el crecimiento y desarrollo",
                "Mantener tejidos y órganos",
                "Ayudar al funcionamiento del metabolismo"
              ],
              const Color(0xFFE1F5FE),
            ),

           
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
                    "Importancia de los macronutrientes",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Una alimentación equilibrada debe incluir "
                    "los tres tipos de macronutrientes para "
                    "mantener la energía, el crecimiento "
                    "y el correcto funcionamiento del organismo.",
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
