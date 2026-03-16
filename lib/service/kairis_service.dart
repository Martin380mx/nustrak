import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

/// URL base del backend
String getBaseUrl() {
  return "https://nustrak.onrender.com";
}

/// Despierta el servidor en Render
Future<void> despertarKairis() async {
  try {
    await http.get(
      Uri.parse(getBaseUrl()),
    );
  } catch (e) {
    print("Kairis aún está despertando...");
  }
}

/// Enviar pregunta a Kairis
Future<String> preguntarKairis(String pregunta) async {

  final url = Uri.parse("${getBaseUrl()}/kairis");

  try {

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
      return "Kairis no pudo responder en este momento.";
    }

  } catch (e) {
    return "No se pudo conectar con Kairis.";
  }
}
