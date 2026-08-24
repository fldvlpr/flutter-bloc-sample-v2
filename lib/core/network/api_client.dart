import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiClient {
  ApiClient({required this.baseUrl});

  final String baseUrl;

  Future<dynamic> get(
    String endpoint, [
    Map<String, dynamic>? queryParams,
  ]) async {
    final uri = Uri.parse('$baseUrl$endpoint').replace(
      queryParameters: queryParams?.map((k, v) => MapEntry(k, v.toString())),
    );

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data from $endpoint');
    }
  }

  Future<dynamic> post(String endpoint, Map<String, dynamic> body) async {
    final response = await http.post(
      Uri.parse('$baseUrl$endpoint'),
      body: jsonEncode(body),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 201) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data from $endpoint');
    }
  }
}
