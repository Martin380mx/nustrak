import 'package:flutter/material.dart';

class DigestionPage extends StatelessWidget {
  const DigestionPage({super.key});

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
        title: const Text("Digestión"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// INTRODUCCION
            tarjetaTitulo("¿Qué es la digestión?"),

            tarjetaContenido(
              "La digestión es el proceso mediante el cual el cuerpo "
              "descompone los alimentos en sustancias más simples "
              "para que puedan ser absorbidas y utilizadas por el "
              "organismo como nutrientes y energía."
            ),

            /// ETAPAS
            tarjetaLista(
              "Etapas del proceso digestivo",
              [
                "Ingestión → entrada de los alimentos al cuerpo por la boca",
                "Digestión → descomposición mecánica y química de los alimentos",
                "Absorción → paso de nutrientes al torrente sanguíneo",
                "Eliminación → expulsión de los desechos del organismo"
              ],
              const Color(0xFFE3F2FD),
            ),

            /// ORGANOS
            tarjetaLista(
              "Órganos del sistema digestivo",
              [
                "Boca → inicia la digestión con la masticación",
                "Esófago → transporta los alimentos al estómago",
                "Estómago → mezcla los alimentos con jugos gástricos",
                "Intestino delgado → absorbe la mayoría de los nutrientes",
                "Intestino grueso → absorbe agua y forma las heces"
              ],
              const Color(0xFFE8F5E9),
            ),

            /// TIPOS
            tarjetaLista(
              "Tipos de digestión",
              [
                "Digestión mecánica → trituración de los alimentos mediante la masticación",
                "Digestión química → descomposición de alimentos mediante enzimas digestivas"
              ],
              const Color(0xFFFFF3E0),
            ),

            /// IMPORTANCIA
            tarjetaLista(
              "Importancia de la digestión",
              [
                "Permite obtener nutrientes esenciales",
                "Proporciona energía al organismo",
                "Ayuda al crecimiento y reparación de tejidos",
                "Mantiene el buen funcionamiento del cuerpo"
              ],
              const Color(0xFFF3E5F5),
            ),

            /// RESUMEN
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
                    Icons.restaurant,
                    size: 40,
                    color: Colors.green,
                  ),

                  SizedBox(height: 10),

                  Text(
                    "¿Por qué es importante la digestión?",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Sin el proceso digestivo el cuerpo no podría "
                    "aprovechar los nutrientes presentes en los "
                    "alimentos. La digestión transforma los alimentos "
                    "en sustancias que el organismo puede utilizar "
                    "para mantener la vida y la salud.",
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
