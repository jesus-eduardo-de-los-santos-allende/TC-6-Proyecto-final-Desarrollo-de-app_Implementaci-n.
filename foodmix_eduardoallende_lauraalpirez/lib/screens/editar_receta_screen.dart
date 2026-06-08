import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/receta.dart';
import '../providers/recetas_provider.dart';
import '../widgets/receta_form.dart';

class EditarRecetaScreen
    extends StatelessWidget {

  final Receta receta;

  const EditarRecetaScreen({
    super.key,
    required this.receta,
  });

  @override
  Widget build(BuildContext context) {

    final nombreController =
        TextEditingController(
      text: receta.nombre,
    );

    final descripcionController =
        TextEditingController(
      text: receta.descripcion,
    );

    final ingredientesController =
        TextEditingController(
      text: receta.ingredientes
          .join(','),
    );

    final preparacionController =
        TextEditingController(
      text: receta.preparacion,
    );

    final categoriaController =
        TextEditingController(
      text: receta.categoria,
    );

    final tiempoController =
        TextEditingController(
      text: receta
          .tiempoPreparacion
          .toString(),
    );

    final imagenController =
        TextEditingController(
      text: receta.imagen,
    );

    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Editar Receta'),
      ),

      body: Padding(
        padding:
            const EdgeInsets.all(16),

        child: Column(
          children: [

            Expanded(
              child: RecetaForm(
                nombreController:
                    nombreController,

                descripcionController:
                    descripcionController,

                ingredientesController:
                    ingredientesController,

                preparacionController:
                    preparacionController,

                categoriaController:
                    categoriaController,

                tiempoController:
                    tiempoController,

                imagenController:
                    imagenController,
              ),
            ),

            ElevatedButton(
              onPressed: () {

                final nueva =
                    Receta(
                  id: receta.id,

                  nombre:
                      nombreController.text,

                  descripcion:
                      descripcionController
                          .text,

                  ingredientes:
                      ingredientesController
                          .text
                          .split(','),

                  preparacion:
                      preparacionController
                          .text,

                  categoria:
                      categoriaController
                          .text,

                  tiempoPreparacion:
                      int.parse(
                        tiempoController
                            .text,
                      ),

                  imagen:
                      imagenController.text,
                );

                Provider.of<
                            RecetasProvider>(
                        context,
                        listen: false)
                    .editarReceta(
                  receta.id,
                  nueva,
                );

                Navigator.pop(
                    context);
              },

              child: const Text(
                'Actualizar',
              ),
            ),
          ],
        ),
      ),
    );
  }
}