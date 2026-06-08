import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/favoritos_provider.dart';
import '../screens/detalle_receta_screen.dart';

class FavoritosScreen extends StatelessWidget {
  const FavoritosScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final favoritos =
        Provider.of<FavoritosProvider>(
      context,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favoritos',
        ),
      ),
      body: favoritos.favoritos.isEmpty
          ? const Center(
              child: Text(
                'No hay recetas favoritas',
              ),
            )
          : ListView.builder(
              itemCount:
                  favoritos.favoritos.length,
              itemBuilder:
                  (context, index) {
                final receta =
                    favoritos.favoritos[index];

                return Card(
                  margin:
                      const EdgeInsets.all(
                          10),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius
                              .circular(10),
                      child:
                          Image.network(
                        receta.imagen,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                        errorBuilder:
                            (context,
                                error,
                                stackTrace) {
                          return const Icon(
                            Icons
                                .restaurant,
                            size: 40,
                          );
                        },
                      ),
                    ),
                    title:
                        Text(receta.nombre),
                    subtitle: Text(
                      receta.descripcion,
                    ),
                    trailing:
                        const Icon(
                      Icons.star,
                      color:
                          Colors.amber,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              DetalleRecetaScreen(
                            receta:
                                receta,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}