import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/receta.dart';
import '../providers/favoritos_provider.dart';
import '../screens/detalle_receta_screen.dart';

class RecetaCard extends StatelessWidget {
  final Receta receta;

  const RecetaCard({
    super.key,
    required this.receta,
  });

  @override
  Widget build(BuildContext context) {
    final favoritos =
        Provider.of<FavoritosProvider>(
      context,
      listen: false,
    );

    final esFavorito = context
        .watch<FavoritosProvider>()
        .esFavorito(receta);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetalleRecetaScreen(
              receta: receta,
            ),
          ),
        );
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius:
                        const BorderRadius.only(
                      topLeft:
                          Radius.circular(20),
                      topRight:
                          Radius.circular(20),
                    ),
                    child: Image.network(
                      receta.imagen,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder:
                          (context, error,
                              stackTrace) {
                        return const Center(
                          child: Icon(
                            Icons.restaurant,
                            size: 60,
                          ),
                        );
                      },
                    ),
                  ),

                  Positioned(
                    top: 5,
                    right: 5,
                    child: Container(
                      decoration:
                          const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {
                          favoritos
                              .toggleFavorito(
                                  receta);
                        },
                        icon: Icon(
                          esFavorito
                              ? Icons.star
                              : Icons.star_border,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.all(10),
              child: Text(
                receta.nombre,
                textAlign:
                    TextAlign.center,
                maxLines: 2,
                overflow:
                    TextOverflow.ellipsis,
                style:
                    const TextStyle(
                  fontSize: 16,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}