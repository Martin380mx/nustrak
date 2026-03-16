import 'package:flutter/material.dart';
import 'submodulos.dart';
import 'splash_screen.dart';
import 'kairis_page.dart';
import 'service/kairis_service.dart'; // NUEVO

void main() {
  runApp(const NustrakApp());
}

class NustrakApp extends StatefulWidget {
  const NustrakApp({super.key});

  @override
  State<NustrakApp> createState() => _NustrakAppState();
}

class _NustrakAppState extends State<NustrakApp> {

  @override
  void initState() {
    super.initState();

    /// Despierta el servidor de Kairis en Render
    despertarKairis();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nustrak',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: const SplashScreen(),
    );
  }
}

class SemestresMenu extends StatelessWidget {
  const SemestresMenu({super.key});

  @override
  Widget build(BuildContext context) {

    final semestres = [
      {"titulo": "Semestre 1", "icon": Icons.looks_one},
      {"titulo": "Semestre 2", "icon": Icons.looks_two},
      {"titulo": "Semestre 3", "icon": Icons.looks_3},
      {"titulo": "Semestre 4", "icon": Icons.looks_4},
      {"titulo": "Semestre 5", "icon": Icons.looks_5},
      {"titulo": "Semestre 6", "icon": Icons.looks_6},
      {"titulo": "Kairis", "icon": Icons.smart_toy},
    ];

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 86, 239, 121),
              Color.fromARGB(255, 45, 211, 164),
              Color.fromARGB(255, 27, 191, 188),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),

              const Text(
                "Nustrak",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.5,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Selecciona tu semestre",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),

              const SizedBox(height: 30),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: LayoutBuilder(
                    builder: (context, constraints) {

                      int columnas = 2;

                      if (constraints.maxWidth > 600) {
                        columnas = 3;
                      }

                      return GridView.builder(
                        itemCount: semestres.length,
                        gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: columnas,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                        ),
                        itemBuilder: (context, index) {
                          return _SemestreCard(
                            titulo: semestres[index]["titulo"] as String,
                            icon: semestres[index]["icon"] as IconData,
                            onTap: () {

                              /// Semestre 2
                              if (index == 1) {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (_, __, ___) =>
                                        const SubmodulosPage(),
                                    transitionsBuilder:
                                        (_, animation, __, child) {
                                      return FadeTransition(
                                        opacity: animation,
                                        child: child,
                                      );
                                    },
                                  ),
                                );
                              }

                              /// Kairis IA
                              if (index == 6) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const KairisPage(),
                                  ),
                                );
                              }

                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SemestreCard extends StatelessWidget {
  final String titulo;
  final IconData icon;
  final VoidCallback onTap;

  const _SemestreCard({
    required this.titulo,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 22,
              color: const Color.fromARGB(221, 38, 209, 129),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                titulo,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(221, 38, 209, 129),
                ),
              ),
            ),
            const Icon(
              Icons.chevron_right,
              size: 20,
              color: Color.fromARGB(137, 36, 246, 148),
            ),
          ],
        ),
      ),
    );
  }
}
