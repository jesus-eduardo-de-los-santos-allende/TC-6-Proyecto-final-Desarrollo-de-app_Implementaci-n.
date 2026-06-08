import 'package:flutter/material.dart';

class RecetaForm extends StatelessWidget {

  final TextEditingController nombreController;

  final TextEditingController descripcionController;

  final TextEditingController ingredientesController;

  final TextEditingController preparacionController;

  final TextEditingController categoriaController;

  final TextEditingController tiempoController;

  final TextEditingController imagenController;

  const RecetaForm({
    super.key,
    required this.nombreController,
    required this.descripcionController,
    required this.ingredientesController,
    required this.preparacionController,
    required this.categoriaController,
    required this.tiempoController,
    required this.imagenController,
  });

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [

          TextField(
            controller: nombreController,
            decoration: const InputDecoration(
              labelText: 'Nombre',
            ),
          ),

          const SizedBox(height: 10),

          TextField(
            controller: descripcionController,
            decoration: const InputDecoration(
              labelText: 'Descripción',
            ),
          ),

          const SizedBox(height: 10),

          TextField(
            controller: ingredientesController,
            decoration: const InputDecoration(
              labelText:
                  'Ingredientes separados por coma',
            ),
          ),

          const SizedBox(height: 10),

          TextField(
            controller: preparacionController,
            maxLines: 4,
            decoration: const InputDecoration(
              labelText: 'Preparación',
            ),
          ),

          const SizedBox(height: 10),

          TextField(
            controller: categoriaController,
            decoration: const InputDecoration(
              labelText: 'Categoría',
            ),
          ),

          const SizedBox(height: 10),

          TextField(
            controller: tiempoController,
            keyboardType:
                TextInputType.number,
            decoration: const InputDecoration(
              labelText:
                  'Tiempo en minutos',
            ),
          ),

          const SizedBox(height: 10),

          TextField(
            controller: imagenController,
            decoration: const InputDecoration(
              labelText: 'URL Imagen',
            ),
          ),
        ],
      ),
    );
  }
}