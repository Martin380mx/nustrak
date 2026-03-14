import 'package:flutter/material.dart';

class MetabolismoPage extends StatelessWidget {
  const MetabolismoPage({super.key});

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
        title: const Text("Metabolismo"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// INTRODUCCION
            tarjetaTitulo("¿Qué es el metabolismo?"),

            tarjetaContenido(
              "El metabolismo es el conjunto de reacciones químicas "
              "que ocurren dentro del organismo para mantener la vida. "
              "A través del metabolismo, el cuerpo transforma los "
              "nutrientes de los alimentos en energía que permite "
              "realizar todas las funciones vitales."
            ),

            /// FUNCIONES
            tarjetaLista(
              "Funciones del metabolismo",
              [
                "Transformar los alimentos en energía",
                "Permitir el crecimiento y desarrollo",
                "Mantener el funcionamiento de órganos",
                "Regular procesos químicos del cuerpo",
                "Reparar células y tejidos"
              ],
              const Color(0xFFE3F2FD),
            ),

            /// TIPOS
            tarjetaLista(
              "Tipos de metabolismo",
              [
                "Anabolismo → construcción de moléculas complejas",
                "Catabolismo → descomposición de moléculas para liberar energía",
                "Ambos procesos trabajan juntos para mantener el equilibrio del organismo"
              ],
              const Color(0xFFE8F5E9),
            ),

            /// FACTORES
            tarjetaLista(
              "Factores que influyen en el metabolismo",
              [
                "Edad",
                "Sexo",
                "Actividad física",
                "Alimentación",
                "Genética",
                "Estado de salud"
              ],
              const Color(0xFFFFF3E0),
            ),

            /// EJEMPLOS
            tarjetaLista(
              "Ejemplos de procesos metabólicos",
              [
                "Digestión de los alimentos",
                "Producción de energía en las células",
                "Síntesis de proteínas",
                "Almacenamiento de grasas",
                "Regulación del azúcar en sangre"
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
                    "Importancia del metabolismo",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Un metabolismo saludable permite que el cuerpo "
                    "utilice correctamente los nutrientes de los alimentos "
                    "para producir energía, mantener el equilibrio del "
                    "organismo y garantizar el buen funcionamiento de "
                    "todas las células.",
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
