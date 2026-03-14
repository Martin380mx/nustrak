import 'package:flutter/material.dart';

class EnergiaAlimentariaPage extends StatelessWidget {
  const EnergiaAlimentariaPage({super.key});

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
        title: const Text("Energía alimentaria"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// INTRODUCCIÓN
            tarjetaTitulo("¿Qué es la energía alimentaria?"),

            tarjetaContenido(
              "La energía alimentaria es la energía que el cuerpo "
              "obtiene de los alimentos para realizar todas sus "
              "funciones vitales. Esta energía permite que el "
              "organismo se mueva, crezca, piense y mantenga "
              "el funcionamiento de los órganos."
            ),

            /// FUNCIONES
            tarjetaLista(
              "¿Para qué se usa la energía?",
              [
                "Realizar actividad física",
                "Mantener la temperatura corporal",
                "Funcionamiento del cerebro",
                "Respiración y circulación",
                "Crecimiento y desarrollo del cuerpo"
              ],
              const Color(0xFFE3F2FD),
            ),

            /// MEDICION
            tarjetaLista(
              "Unidad de medida",
              [
                "La energía de los alimentos se mide en kilocalorías (kcal)",
                "También se puede expresar en kilojulios (kJ)",
                "Las calorías indican cuánta energía aporta un alimento"
              ],
              const Color(0xFFE8F5E9),
            ),

            /// FUENTES
            tarjetaLista(
              "Principales fuentes de energía",
              [
                "Carbohidratos → principal fuente de energía rápida",
                "Grasas → reserva de energía a largo plazo",
                "Proteínas → pueden aportar energía cuando es necesario"
              ],
              const Color(0xFFFFF3E0),
            ),

            /// EJEMPLOS
            tarjetaLista(
              "Ejemplos de alimentos energéticos",
              [
                "Arroz, pan y pasta",
                "Frutas como plátano y manzana",
                "Aceites y mantequilla",
                "Frutos secos",
                "Cereales y legumbres"
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
                    Icons.bolt,
                    size: 40,
                    color: Colors.orange,
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Importancia de la energía alimentaria",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Consumir la cantidad adecuada de energía "
                    "a través de los alimentos permite mantener "
                    "un equilibrio entre lo que el cuerpo gasta "
                    "y lo que consume, ayudando a mantener "
                    "una buena salud.",
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
