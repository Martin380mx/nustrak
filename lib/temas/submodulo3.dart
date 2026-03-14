import 'package:flutter/material.dart';

class Submodulo3Page extends StatelessWidget {
  const Submodulo3Page({super.key});

  @override
  Widget build(BuildContext context) {

    final temas = [
      "Alimentación saludable",
      "Plato del buen comer",
      "Guías alimentarias",
      "Prevención de enfermedades",
      "Educación nutricional",
      "Hábitos alimenticios",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Submódulo 3"),
        centerTitle: true,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: temas.length,
        itemBuilder: (context, index) {

          return Padding(
            padding: const EdgeInsets.only(bottom: 12),

            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Abrir tema: ${temas[index]}"),
                  ),
                );

              },

              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 18),

                decoration: BoxDecoration(
                  color: const Color(0xFFBBDEFB),
                  borderRadius: BorderRadius.circular(10),

                  border: Border.all(
                    color: Colors.blue.shade200,
                  ),
                ),

                child: Row(
                  children: [

                    const Icon(
                      Icons.health_and_safety,
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

                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.black54,
                    ),
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
