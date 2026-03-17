import 'package:flutter/material.dart';

class SistemaCirculatorioPage extends StatelessWidget {
  const SistemaCirculatorioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sistema Circulatorio"),
        backgroundColor: const Color(0xFF2DD3A4),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Text(
"""
El sistema circulatorio es el encargado de transportar sangre, oxígeno, nutrientes y hormonas a todas las células del cuerpo.

Componentes principales:

• Corazón
• Sangre
• Vasos sanguíneos

Tipos de vasos sanguíneos:

Arterias:
Transportan sangre desde el corazón hacia el resto del cuerpo.

Venas:
Llevan la sangre de regreso al corazón.

Capilares:
Permiten el intercambio de nutrientes y oxígeno con las células.

Funciones principales:

• Transportar oxígeno
• Distribuir nutrientes
• Eliminar desechos metabólicos
• Regular la temperatura corporal
• Transportar hormonas

Dato interesante:
El corazón late aproximadamente 100,000 veces al día.
""",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
