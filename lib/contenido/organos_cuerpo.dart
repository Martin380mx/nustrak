import 'package:flutter/material.dart';

class OrganosCuerpoPage extends StatelessWidget {
  const OrganosCuerpoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Órganos del Cuerpo"),
        backgroundColor: const Color(0xFF2DD3A4),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Text(
"""
Los órganos del cuerpo humano son estructuras formadas por tejidos que cumplen funciones específicas para mantener la vida.

Órganos principales del cuerpo:

Cerebro:
Controla todas las funciones del cuerpo y procesa la información.

Corazón:
Bombea la sangre a todo el organismo.

Pulmones:
Permiten el intercambio de oxígeno y dióxido de carbono.

Hígado:
Procesa nutrientes y elimina toxinas.

Riñones:
Filtran la sangre y producen orina.

Estómago:
Descompone los alimentos con ácidos y enzimas.

Cada órgano trabaja en conjunto con otros sistemas del cuerpo para mantener el equilibrio y funcionamiento adecuado del organismo.
""",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
