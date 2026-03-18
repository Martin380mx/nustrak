import 'package:flutter/material.dart';
import 'service/kairis_service.dart';

class KairisPage extends StatefulWidget {
  const KairisPage({super.key});

  @override
  State<KairisPage> createState() => _KairisPageState();
}

class _KairisPageState extends State<KairisPage> {

  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

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

    _scrollAbajo();

    String respuesta = await preguntarKairis(pregunta);

    setState(() {
      mensajes.add({
        "tipo": "ia",
        "texto": respuesta
      });
      cargando = false;
    });

    _scrollAbajo();
  }

  void _scrollAbajo() {
    Future.delayed(const Duration(milliseconds: 200), () {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }

  Widget burbuja(Map<String,String> mensaje){

    bool esUsuario = mensaje["tipo"] == "usuario";

    return Align(
      alignment: esUsuario ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 500),
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        decoration: BoxDecoration(
          color: esUsuario
              ? const Color.fromARGB(255, 45, 211, 164)
              : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          mensaje["texto"] ?? "",
          style: TextStyle(
            fontSize: 15,
            color: esUsuario ? Colors.white : Colors.black87,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xfff7f7f7),

      appBar: AppBar(
        title: const Text("Kairis IA"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 45, 211, 164),
      ),

      body: Column(
        children: [

          
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.all(16),
              itemCount: mensajes.length,
              itemBuilder: (context, index) {
                return burbuja(mensajes[index]);
              },
            ),
          ),

          
          if(cargando)
          const Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text(
              "Kairis está escribiendo...",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.grey
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            color: Colors.white,
            child: Row(
              children: [

                Expanded(
                  child: TextField(
                    controller: _controller,

                    onSubmitted: (value){
                      enviarPregunta();
                    },

                    decoration: InputDecoration(
                      hintText: "Pregunta algo a Kairis...",
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 8),

                CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 45, 211, 164),
                  child: IconButton(
                    icon: const Icon(Icons.send,color: Colors.white),
                    onPressed: enviarPregunta,
                  ),
                )

              ],
            ),
          )

        ],
      ),
    );
  }
}
