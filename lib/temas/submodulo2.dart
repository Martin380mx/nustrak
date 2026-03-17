import 'package:flutter/material.dart';
import '../contenido/sistema_digestivo.dart';
import '../contenido/sistema_cicurlatorio.dart';
import '../contenido/sistema_endocrino.dart';
import '../contenido/organos_cuerpo.dart';
import '../contenido/homeostasis.dart';

class Submodulo2Page extends StatelessWidget {
  const Submodulo2Page({super.key});

  @override
  Widget build(BuildContext context) {

    final temas = [
      "Sistema digestivo",
      "Sistema circulatorio",
      "Sistema endocrino",
      "Órganos del cuerpo",
      "Homeostasis",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Submódulo 2"),
        centerTitle: true,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: temas.length,
        itemBuilder: (context, index) {

          return GestureDetector(

            onTap: () {

              if(index == 0){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SistemaDigestivoPage(),
                  ),
                );
              }

              if(index == 1){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SistemaCirculatorioPage(),
                  ),
                );
              }

              if(index == 2){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SistemaEndocrinoPage(),
                  ),
                );
              }

              if(index == 3){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrganosCuerpoPage(),
                  ),
                );
              }

              if(index == 4){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeostasisPage(),
                  ),
                );
              }

            },

            child: Container(
              margin: const EdgeInsets.only(bottom: 12),

              child: Container(
                padding: const EdgeInsets.all(18),

                decoration: BoxDecoration(
                  color: const Color(0xFFE8F5E9),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.green),
                ),

                child: Row(
                  children: [

                    const Icon(
                      Icons.science,
                      color: Colors.green,
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
