import 'package:flutter/material.dart';

class Submodulo5Page extends StatelessWidget {
  const Submodulo5Page({super.key});

  @override
  Widget build(BuildContext context) {

    final temas = [
      "Fisiopatología de enfermedades",
      "Enfermedades gastrointestinales",
      "Enfermedades renales",
      "Enfermedades cardiovasculares",
      "Enfermedades hepáticas",
      "Dietoterapia",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Submódulo 5"),
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
                  color: const Color(0xFFE1BEE7),
                  borderRadius: BorderRadius.circular(10),

                  border: Border.all(
                    color: Colors.purple.shade200,
                  ),
                ),

                child: Row(
                  children: [

                    const Icon(
                      Icons.medical_services,
                      color: Colors.purple,
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
