import 'package:flutter/material.dart';

import '../contenido/nutrientes.dart';
import '../contenido/macronutrientes.dart';
import '../contenido/micronutrientes.dart';
import '../contenido/digestion.dart';
import '../contenido/metabolismo.dart';
import '../contenido/energia_alimentaria.dart';

class Submodulo1Page extends StatelessWidget {
  const Submodulo1Page({super.key});

  @override
  Widget build(BuildContext context) {

    final temas = [
      "Nutrientes",
      "Macronutrientes",
      "Micronutrientes",
      "Digestión",
      "Metabolismo",
      "Energía alimentaria",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Submódulo 1"),
        centerTitle: true,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: temas.length,
        itemBuilder: (context, index) {

          return Container(
            margin: const EdgeInsets.only(bottom: 12),

            child: InkWell(
              borderRadius: BorderRadius.circular(10),

              onTap: () {

                if (index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NutrientesPage(),
                    ),
                  );
                }

                if (index == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MacronutrientesPage(),
                    ),
                  );
                }

                if (index == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MicronutrientesPage(),
                    ),
                  );
                }

                if (index == 3) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DigestionPage(),
                    ),
                  );
                }

                if (index == 4) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MetabolismoPage(),
                    ),
                  );
                }

                if (index == 5) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EnergiaAlimentariaPage(),
                    ),
                  );
                }

              },

              child: Container(
                padding: const EdgeInsets.all(18),

                decoration: BoxDecoration(
                  color: const Color(0xFFE3F2FD),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blue),
                ),

                child: Row(
                  children: [

                    const Icon(
                      Icons.menu_book,
                      color: Colors.blue,
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: Text(
                        temas[index],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    const Icon(Icons.arrow_forward_ios,size:16)
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
