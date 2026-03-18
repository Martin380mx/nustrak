import 'package:flutter/material.dart';

class OrganosCuerpoPage extends StatelessWidget {
  const OrganosCuerpoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Órganos del Cuerpo"),
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
                icon: Icons.info,
                titulo: "¿Qué son los órganos?",
                contenido:
                    "Son estructuras formadas por tejidos que cumplen funciones específicas para mantener la vida.",
              ),

              
              _card(
                icon: Icons.psychology,
                titulo: "Cerebro",
                contenido:
                    "Controla todas las funciones del cuerpo y procesa la información.",
              ),

              _card(
                icon: Icons.favorite,
                titulo: "Corazón",
                contenido:
                    "Bombea la sangre a todo el organismo.",
              ),

              _card(
                icon: Icons.air,
                titulo: "Pulmones",
                contenido:
                    "Permiten el intercambio de oxígeno y dióxido de carbono.",
              ),

              _card(
                icon: Icons.local_hospital,
                titulo: "Hígado",
                contenido:
                    "Procesa nutrientes y elimina toxinas del cuerpo.",
              ),

              _card(
                icon: Icons.water_drop,
                titulo: "Riñones",
                contenido:
                    "Filtran la sangre y producen orina.",
              ),

              _card(
                icon: Icons.restaurant,
                titulo: "Estómago",
                contenido:
                    "Descompone los alimentos con ácidos y enzimas.",
              ),

              
              _card(
                icon: Icons.groups,
                titulo: "Trabajo en conjunto",
                contenido:
                    "Todos los órganos trabajan en conjunto con otros sistemas del cuerpo para mantener el equilibrio y funcionamiento adecuado del organismo.",
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
