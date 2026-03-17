import 'package:flutter/material.dart';

class HomeostasisPage extends StatelessWidget {
  const HomeostasisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homeostasis"),
        backgroundColor: const Color(0xFF2DD3A4),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Text(
"""
La homeostasis es la capacidad del organismo para mantener condiciones internas estables a pesar de cambios en el entorno.

El cuerpo humano regula constantemente:

• Temperatura corporal
• Nivel de glucosa en sangre
• Presión arterial
• Equilibrio de líquidos
• pH sanguíneo

Ejemplo de homeostasis:

Cuando la temperatura corporal aumenta, el cuerpo produce sudor para enfriarse.

Cuando la glucosa en sangre aumenta, el páncreas libera insulina para disminuirla.

Sistemas que participan en la homeostasis:

• Sistema nervioso
• Sistema endocrino
• Sistema circulatorio

Importancia:

La homeostasis permite que el organismo funcione correctamente y se adapte a los cambios del ambiente.
""",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
