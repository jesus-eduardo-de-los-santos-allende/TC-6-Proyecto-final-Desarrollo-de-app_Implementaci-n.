import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../models/receta.dart';
import '../providers/recetas_provider.dart';
import '../widgets/receta_form.dart';

class AgregarRecetaScreen
    extends StatelessWidget {

  const AgregarRecetaScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final nombreController =
        TextEditingController();

    final descripcionController =
        TextEditingController();

    final ingredientesController =
        TextEditingController();

    final preparacionController =
        TextEditingController();

    final categoriaController =
        TextEditingController();

    final tiempoController =
        TextEditingController();

    final imagenController =
        TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Agregar Receta'),
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

                final receta = Receta(
                  id: const Uuid().v4(),

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
                      int.tryParse(
                            tiempoController
                                .text,
                          ) ??
                          0,

                  imagen:
                      imagenController.text,
                );

                Provider.of<
                            RecetasProvider>(
                        context,
                        listen: false)
                    .agregarReceta(
                        receta);

if(nombreController.text.isEmpty ||
   imagenController.text.isEmpty){
  
  ScaffoldMessenger.of(context)
      .showSnackBar(
    const SnackBar(
      content: Text(
        'Completa nombre e imagen',
      ),
    ),
  );

  return;
}


                Navigator.pop(
                    context);
              },

              child: const Text(
                'Guardar',
              ),
            ),
          ],
        ),
      ),
    );
  }
}