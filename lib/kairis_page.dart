import 'package:flutter/material.dart';
import 'service/kairis_service.dart';

class KairisPage extends StatefulWidget {
  const KairisPage({super.key});

  @override
  State<KairisPage> createState() => _KairisPageState();
}

class _KairisPageState extends State<KairisPage> {

  final TextEditingController _controller = TextEditingController();

  List<Map<String, String>> mensajes = [];

  bool cargando = false;

  Future<void> enviarPregunta() async {

    String pregunta = _controller.text.trim();

    if (pregunta.isEmpty) return;

    setState(() {
      mensajes.add({
        "tipo": "usuario",
        "texto": pregunta
      });
      cargando = true;
    });

    _controller.clear();

    String respuesta = await preguntarKairis(pregunta);

    setState(() {
      mensajes.add({
        "tipo": "ia",
        "texto": respuesta
      });
      cargando = false;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Kairis IA"),
        backgroundColor: const Color.fromARGB(255, 45, 211, 164),
      ),

      body: Column(
        children: [

          /// CHAT
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: mensajes.length,
              itemBuilder: (context, index) {

                bool esUsuario = mensajes[index]["tipo"] == "usuario";

                return Align(
                  alignment: esUsuario
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: esUsuario
                          ? const Color.fromARGB(255, 45, 211, 164)
                          : Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      mensajes[index]["texto"] ?? "",
                      style: TextStyle(
                        color: esUsuario ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                );

              },
            ),
          ),

          if (cargando)
            const Padding(
              padding: EdgeInsets.all(10),
              child: CircularProgressIndicator(),
            ),

          /// INPUT
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            color: Colors.white,
            child: Row(
              children: [

                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: "Pregunta algo a Kairis...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                IconButton(
                  icon: const Icon(Icons.send),
                  color: const Color.fromARGB(255, 45, 211, 164),
                  onPressed: enviarPregunta,
                )

              ],
            ),
          )

        ],
      ),
    );
  }
}
