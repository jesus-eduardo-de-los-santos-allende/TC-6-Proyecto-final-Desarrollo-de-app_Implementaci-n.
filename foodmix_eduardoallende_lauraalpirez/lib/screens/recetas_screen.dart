import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/recetas_provider.dart';
import '../widgets/buscador_recetas.dart';
import '../widgets/receta_card.dart';
import 'agregar_receta_screen.dart';

class RecetasScreen extends StatelessWidget {
  const RecetasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final recetas =
        Provider.of<RecetasProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recetas'),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: BuscadorRecetas(
                  recetas.recetas,
                ),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      floatingActionButton:
          FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) =>
                  const AgregarRecetaScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: GridView.builder(
        padding:
            const EdgeInsets.all(12),
        itemCount:
            recetas.recetas.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.8,
        ),
        itemBuilder:
            (context, index) {
          return RecetaCard(
            receta:
                recetas.recetas[index],
          );
        },
      ),
    );
  }
}