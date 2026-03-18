import 'package:flutter/material.dart';

class SistemaCirculatorioPage extends StatelessWidget {
  const SistemaCirculatorioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sistema Circulatorio"),
        centerTitle: true,
        backgroundColor: const Color(0xFF2DD3A4),
      ),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFE8F5E9),
              Color(0xFFB2DFDB),
              Color(0xFF2DD3A4),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [

              /// INTRO
              _card(
                icon: Icons.favorite,
                titulo: "¿Qué es el sistema circulatorio?",
                contenido:
                    "Es el encargado de transportar sangre, oxígeno, nutrientes y hormonas a todas las células del cuerpo.",
              ),

              /// COMPONENTES
              _card(
                icon: Icons.category,
                titulo: "Componentes principales",
                contenido:
                    "• Corazón\n"
                    "• Sangre\n"
                    "• Vasos sanguíneos",
              ),

              /// TIPOS DE VASOS
              _card(
                icon: Icons.alt_route,
                titulo: "Tipos de vasos sanguíneos",
                contenido:
                    "Arterias:\nTransportan sangre desde el corazón.\n\n"
                    "Venas:\nLlevan la sangre de regreso al corazón.\n\n"
                    "Capilares:\nPermiten el intercambio de oxígeno y nutrientes.",
              ),

              /// FUNCIONES
              _card(
                icon: Icons.health_and_safety,
                titulo: "Funciones principales",
                contenido:
                    "• Transportar oxígeno\n"
                    "• Distribuir nutrientes\n"
                    "• Eliminar desechos\n"
                    "• Regular temperatura\n"
                    "• Transportar hormonas",
              ),

              /// DATO
              _card(
                icon: Icons.lightbulb,
                titulo: "Dato interesante",
                contenido:
                    "El corazón late aproximadamente 100,000 veces al día.",
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _card({
    required IconData icon,
    required String titulo,
    required String contenido,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.95),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.green.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// ICONO
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFF2DD3A4).withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: const Color(0xFF2DD3A4)),
          ),

          const SizedBox(width: 12),

          
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  contenido,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
