import 'package:flutter/material.dart';

class Submodulo4Page extends StatelessWidget {
  const Submodulo4Page({super.key});

  @override
  Widget build(BuildContext context) {

    final temas = [
      "Fisiopatología",
      "Diabetes",
      "Hipertensión",
      "Obesidad",
      "Desnutrición",
      "Enfermedades metabólicas",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Submódulo 4"),
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
                  color: const Color(0xFFFFCDD2),
                  borderRadius: BorderRadius.circular(10),

                  border: Border.all(
                    color: Colors.red.shade200,
                  ),
                ),

                child: Row(
                  children: [

                    const Icon(
                      Icons.local_hospital,
                      color: Colors.red,
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
