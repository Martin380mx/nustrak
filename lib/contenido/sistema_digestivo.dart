import 'package:flutter/material.dart';

class SistemaDigestivoPage extends StatelessWidget {
  const SistemaDigestivoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sistema Digestivo"),
        backgroundColor: const Color(0xFF2DD3A4),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Text(
"""
El sistema digestivo es el conjunto de órganos encargados de transformar los alimentos en nutrientes que el cuerpo puede absorber y utilizar para obtener energía, crecer y reparar tejidos.

Órganos principales:
• Boca
• Esófago
• Estómago
• Intestino delgado
• Intestino grueso
• Hígado
• Páncreas

Funciones principales:

1. Ingestión
Proceso mediante el cual los alimentos entran al organismo.

2. Digestión
Descomposición mecánica y química de los alimentos.

3. Absorción
Los nutrientes pasan al torrente sanguíneo.

4. Eliminación
El cuerpo elimina los residuos no aprovechados.

Importancia en la nutrición:

El sistema digestivo permite que los nutrientes como proteínas, carbohidratos, grasas, vitaminas y minerales sean absorbidos por el cuerpo.

Dato importante:
El intestino delgado mide aproximadamente 6 metros y es donde ocurre la mayor absorción de nutrientes.
""",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
