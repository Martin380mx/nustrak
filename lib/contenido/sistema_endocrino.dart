import 'package:flutter/material.dart';

class SistemaEndocrinoPage extends StatelessWidget {
  const SistemaEndocrinoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sistema Endocrino"),
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
                icon: Icons.science,
                titulo: "¿Qué es el sistema endocrino?",
                contenido:
                    "Está formado por glándulas que producen hormonas, las cuales regulan diversas funciones del organismo.",
              ),

           
              _card(
                icon: Icons.account_tree,
                titulo: "Glándulas principales",
                contenido:
                    "• Hipófisis\n"
                    "• Tiroides\n"
                    "• Páncreas\n"
                    "• Glándulas suprarrenales\n"
                    "• Ovarios\n"
                    "• Testículos",
              ),

         
              _card(
                icon: Icons.sync,
                titulo: "Funciones del sistema endocrino",
                contenido:
                    "• Regular el metabolismo\n"
                    "• Controlar el crecimiento\n"
                    "• Regular el desarrollo\n"
                    "• Mantener el equilibrio interno\n"
                    "• Controlar funciones reproductivas",
              ),

              
              _card(
                icon: Icons.lightbulb,
                titulo: "Ejemplo importante",
                contenido:
                    "La insulina es una hormona producida por el páncreas que regula los niveles de glucosa en la sangre.",
              ),

              
              _card(
                icon: Icons.health_and_safety,
                titulo: "Importancia en la nutrición",
                contenido:
                    "Las hormonas influyen directamente en el metabolismo de los nutrientes, afectando cómo el cuerpo usa la energía.",
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
