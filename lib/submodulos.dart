import 'package:flutter/material.dart';
import 'temas/submodulo1.dart';
import 'temas/submodulo2.dart';
import 'temas/submodulo3.dart';
import 'temas/submodulo4.dart';
import 'temas/submodulo5.dart';

class SubmodulosPage extends StatelessWidget {
  const SubmodulosPage({super.key});

  @override
  Widget build(BuildContext context) {
    final modulos = [
      {"titulo": "Módulo I", "color": const Color(0xFFFFF9C4)},
      {"titulo": "Módulo II", "color": const Color(0xFFC8E6C9)},
      {"titulo": "Módulo III", "color": const Color(0xFFBBDEFB)},
      {"titulo": "Módulo IV", "color": const Color(0xFFFFCDD2)},
      {"titulo": "Módulo V", "color": const Color(0xFFE1BEE7)},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Segundo Semestre",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: modulos.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),

              /// 👇 AQUÍ ESTA EL CAMBIO
              onTap: () {

                if (index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Submodulo1Page(),
                    ),
                  );
                }

                if (index == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Submodulo2Page(),
                    ),
                  );
                }

                if (index == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Submodulo3Page(),
                    ),
                  );
                }

                if (index == 3) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Submodulo4Page(),
                    ),
                  );
                }

                if (index == 4) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Submodulo5Page(),
                    ),
                  );
                }

              },

              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 18),
                decoration: BoxDecoration(
                  color: modulos[index]["color"] as Color,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      modulos[index]["titulo"] as String,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
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


