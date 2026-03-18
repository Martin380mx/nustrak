import 'package:flutter/material.dart';

class MicronutrientesPage extends StatelessWidget {
  const MicronutrientesPage({super.key});

  Widget tarjetaTitulo(String titulo) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 10),
      child: Text(
        titulo,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget tarjetaContenido(String texto) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 5,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 16,
          height: 1.5,
        ),
      ),
    );
  }

  Widget tarjetaLista(String titulo, List<String> items, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            titulo,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          ...items.map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Row(
                children: [
                  const Icon(Icons.circle, size: 8),
                  const SizedBox(width: 8),
                  Expanded(child: Text(item)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Micronutrientes"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          
            tarjetaTitulo("¿Qué son los micronutrientes?"),

            tarjetaContenido(
              "Los micronutrientes son sustancias esenciales que el "
              "organismo necesita en pequeñas cantidades para mantener "
              "un buen funcionamiento. Aunque se requieren en menor "
              "cantidad que los macronutrientes, son indispensables "
              "para la salud, el crecimiento y el desarrollo del cuerpo."
            ),

          
            tarjetaLista(
              "Tipos de micronutrientes",
              [
                "Vitaminas → regulan funciones del cuerpo",
                "Minerales → ayudan en procesos celulares",
                "Participan en el metabolismo",
                "Mantienen el equilibrio del organismo"
              ],
              const Color(0xFFE3F2FD),
            ),

              tarjetaLista(
                "Funciones de los micronutrientes",
                [
                  "Fortalecer el sistema inmunológico",
                  "Favorecer el crecimiento y desarrollo",
                  "Reparar tejidos y células",
                  "Regular procesos metabólicos",
                  "Mantener el equilibrio del organismo"
                ],
                const Color(0xFFE8F5E9),
            ),

            tarjetaLista(
              "Vitaminas importantes",
              [
                "Vitamina A → salud visual y piel",
                "Vitamina B → metabolismo energético",
                "Vitamina C → sistema inmunológico",
                "Vitamina D → absorción del calcio",
                "Vitamina E → protección celular",
                "Vitamina K → coagulación sanguínea"
              ],
              const Color(0xFFE8F5E9),
            ),

              tarjetaLista(
                "Minerales esenciales",
                [
                  "Calcio → formación de huesos y dientes",
                  "Hierro → transporte de oxígeno en la sangre",
                  "Potasio → función muscular y nerviosa",
                  "Magnesio → metabolismo celular",
                  "Zinc → sistema inmunológico",
                  "Sodio → equilibrio de líquidos"  
                ],
                const Color(0xFFFFF3E0),  
            ),

            tarjetaLista(
              "Minerales esenciales",
              [
                "Calcio → formación de huesos y dientes",
                "Hierro → transporte de oxígeno en la sangre",
                "Potasio → función muscular y nerviosa",
                "Magnesio → metabolismo celular",
                "Zinc → sistema inmunológico",
                "Sodio → equilibrio de líquidos"
              ],
              const Color(0xFFFFF3E0),
            ),

           
            tarjetaLista(
              "Alimentos ricos en micronutrientes",
              [
                "Frutas y verduras",
                "Leche y derivados",
                "Carnes y pescado",
                "Frutos secos",
                "Legumbres",
                "Cereales integrales"
              ],
              const Color(0xFFF3E5F5),
            ),

            
            Container(
              padding: const EdgeInsets.all(18),
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: const Color(0xFFE8F5E9),
                borderRadius: BorderRadius.circular(12),
              ),

              child: const Column(
                children: [

                  Icon(
                    Icons.health_and_safety,
                    size: 40,
                    color: Colors.green,
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Importancia de los micronutrientes",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Una dieta equilibrada que incluya frutas, verduras, "
                    "cereales y alimentos de origen animal permite "
                    "obtener los micronutrientes necesarios para "
                    "mantener una buena salud y prevenir enfermedades.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

          ],
        ),
      ),
    );
  }
}
