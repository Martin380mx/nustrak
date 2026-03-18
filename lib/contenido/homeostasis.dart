import 'package:flutter/material.dart';

class HomeostasisPage extends StatelessWidget {
  const HomeostasisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homeostasis"),
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

             
              _card(
                icon: Icons.health_and_safety,
                titulo: "¿Qué es la Homeostasis?",
                contenido:
                    "Es la capacidad del organismo para mantener condiciones internas estables a pesar de cambios en el entorno.",
              ),

            
              _card(
                icon: Icons.monitor_heart,
                titulo: "¿Qué regula el cuerpo?",
                contenido:
                    "• Temperatura corporal\n"
                    "• Nivel de glucosa en sangre\n"
                    "• Presión arterial\n"
                    "• Equilibrio de líquidos\n"
                    "• pH sanguíneo",
              ),

              
              _card(
                icon: Icons.lightbulb,
                titulo: "Ejemplos",
                contenido:
                    "• Cuando aumenta la temperatura, sudamos.\n"
                    "• Cuando sube la glucosa, el cuerpo libera insulina.",
              ),

              
              _card(
                icon: Icons.settings_system_daydream,
                titulo: "Sistemas involucrados",
                contenido:
                    "• Sistema nervioso\n"
                    "• Sistema endocrino\n"
                    "• Sistema circulatorio",
              ),

              
              _card(
                icon: Icons.star,
                titulo: "Importancia",
                contenido:
                    "Permite que el organismo funcione correctamente y se adapte a los cambios del ambiente.",
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
