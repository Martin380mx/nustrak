import 'package:flutter/material.dart';

class SistemaDigestivoPage extends StatelessWidget {
  const SistemaDigestivoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sistema Digestivo"),
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
                icon: Icons.restaurant_menu,
                titulo: "¿Qué es el sistema digestivo?",
                contenido:
                    "Es el conjunto de órganos encargados de transformar los alimentos en nutrientes que el cuerpo puede absorber y utilizar para obtener energía.",
              ),

           
              _card(
                icon: Icons.account_tree,
                titulo: "Órganos principales",
                contenido:
                    "• Boca\n"
                    "• Esófago\n"
                    "• Estómago\n"
                    "• Intestino delgado\n"
                    "• Intestino grueso\n"
                    "• Hígado\n"
                    "• Páncreas",
              ),

             
              _card(
                icon: Icons.sync_alt,
                titulo: "Funciones principales",
                contenido:
                    "1. Ingestión: Entrada de alimentos.\n\n"
                    "2. Digestión: Descomposición de alimentos.\n\n"
                    "3. Absorción: Paso de nutrientes a la sangre.\n\n"
                    "4. Eliminación: Expulsión de desechos.",
              ),

              /// IMPORTANCIA
              _card(
                icon: Icons.health_and_safety,
                titulo: "Importancia en la nutrición",
                contenido:
                    "Permite absorber nutrientes esenciales como proteínas, carbohidratos, grasas, vitaminas y minerales.",
              ),
              _card(
                icon: Icons.insights,
                titulo: "Dato importante",
                contenido:
                    "El intestino delgado mide aproximadamente 6 metros y es donde ocurre la mayor absorción de nutrientes.",
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
