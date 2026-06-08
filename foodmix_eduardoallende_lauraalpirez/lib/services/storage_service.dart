import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class StorageService {

  Future<void> guardarString(
    String key,
    String value,
  ) async {

    final prefs =
        await SharedPreferences.getInstance();

    await prefs.setString(
      key,
      value,
    );
  }

  Future<String?> obtenerString(
    String key,
  ) async {

    final prefs =
        await SharedPreferences.getInstance();

    return prefs.getString(key);
  }

  Future<void> guardarLista(
    String key,
    List<dynamic> lista,
  ) async {

    final prefs =
        await SharedPreferences.getInstance();

    await prefs.setString(
      key,
      jsonEncode(lista),
    );
  }

  Future<List<dynamic>> obtenerLista(
    String key,
  ) async {

    final prefs =
        await SharedPreferences.getInstance();

    final data = prefs.getString(key);

    if (data == null) {
      return [];
    }

    return jsonDecode(data);
  }
}