import 'package:flutter/material.dart';

import '../models/receta.dart';

class FavoritosProvider extends ChangeNotifier {

  final List<Receta> _favoritos = [];

  List<Receta> get favoritos => _favoritos;

  bool esFavorito(Receta receta) {
    return _favoritos.contains(receta);
  }

  void toggleFavorito(Receta receta) {

    if (_favoritos.contains(receta)) {
      _favoritos.remove(receta);
    } else {
      _favoritos.add(receta);
    }

    notifyListeners();
  }
}