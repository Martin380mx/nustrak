import 'package:flutter/material.dart';

class SistemaEndocrinoPage extends StatelessWidget {
  const SistemaEndocrinoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sistema Endocrino"),
        backgroundColor: const Color(0xFF2DD3A4),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Text(
"""
El sistema endocrino está formado por glándulas que producen hormonas. Estas hormonas regulan diversas funciones del organismo.

Glándulas principales:

• Hipófisis
• Tiroides
• Páncreas
• Glándulas suprarrenales
• Ovarios
• Testículos

Funciones del sistema endocrino:

• Regular el metabolismo
• Controlar el crecimiento
• Regular el desarrollo
• Mantener el equilibrio interno del cuerpo
• Controlar funciones reproductivas

Ejemplo importante:

La insulina es una hormona producida por el páncreas que regula los niveles de glucosa en la sangre.

Importancia en la nutrición:

Las hormonas influyen directamente en el metabolismo de los nutrientes.
""",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
