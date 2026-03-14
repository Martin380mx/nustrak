import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

/// Detecta la URL correcta según el dispositivo
String getBaseUrl() {

  if (kIsWeb) {
    return "http://localhost:8001";
  }

  if (Platform.isAndroid) {
    return "http://10.0.2.2:8001";
  }

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    return "http://127.0.0.1:8001";
  }

  if (Platform.isIOS) {
    return "http://localhost:8001";
  }

  return "http://127.0.0.1:8001";
}

Future<String> preguntarKairis(String pregunta) async {

  final url = Uri.parse("${getBaseUrl()}/kairis");

  final response = await http.post(
    url,
    headers: {"Content-Type": "application/json"},
    body: jsonEncode({
      "pregunta": pregunta
    }),
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return data["respuesta"];
  } else {
    return "Error al conectar con Kairis";
  }
}
