import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/receta.dart';
import '../providers/recetas_provider.dart';
import 'detalle_receta_screen.dart';

class RecetaAleatoriaScreen extends StatefulWidget {
  const RecetaAleatoriaScreen({
    super.key,
  });

  @override
  State<RecetaAleatoriaScreen> createState() =>
      _RecetaAleatoriaScreenState();
}

class _RecetaAleatoriaScreenState
    extends State<RecetaAleatoriaScreen> {

  Receta? receta;

  bool cargando = false;


  void generarReceta() {

    if (cargando) return;

    setState(() {
      cargando = true;
    });


    Future.delayed(
      const Duration(milliseconds: 500),
      () {

        if (!mounted) return;


        final nuevaReceta =
            Provider.of<RecetasProvider>(
          context,
          listen: false,
        ).recetaAleatoria();


        setState(() {

          receta = nuevaReceta;

          cargando = false;

        });

      },
    );
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title:
            const Text(
          'Receta Aleatoria',
        ),
      ),


      body: Padding(
        padding:
            const EdgeInsets.all(20),

        child: Column(
          children: [


            const Text(
              '¿No sabes qué cocinar hoy?',
              textAlign:
                  TextAlign.center,

              style:
                  TextStyle(
                fontSize: 28,
                fontWeight:
                    FontWeight.bold,
              ),
            ),


            const SizedBox(
              height: 20,
            ),



            ElevatedButton.icon(

              onPressed:
                  cargando
                      ? null
                      : generarReceta,


              icon:
                  cargando
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child:
                              CircularProgressIndicator(),
                        )
                      : const Icon(
                          Icons.casino,
                        ),


              label:
                  Text(
                cargando
                    ? 'Generando...'
                    : 'Generar receta',
              ),
            ),



            const SizedBox(
              height: 25,
            ),



            if (receta != null)

              Expanded(

                child:
                    GestureDetector(

                  onTap: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            DetalleRecetaScreen(
                          receta:
                              receta!,
                        ),
                      ),
                    );

                  },


                  child:
                      Card(

                    elevation:
                        6,

                    shape:
                        RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(
                              20),
                    ),


                    child:
                        Column(

                      children: [


                        Expanded(

                          child:
                              ClipRRect(

                            borderRadius:
                                const BorderRadius.only(
                              topLeft:
                                  Radius.circular(20),
                              topRight:
                                  Radius.circular(20),
                            ),


                            child:
                                Image.network(

                              receta!.imagen,

                              width:
                                  double.infinity,

                              fit:
                                  BoxFit.cover,


                              errorBuilder:
                                  (_,__,___){

                                return const Icon(
                                  Icons.restaurant,
                                  size: 80,
                                );

                              },

                            ),
                          ),
                        ),



                        Padding(

                          padding:
                              const EdgeInsets.all(
                                  15),


                          child:
                              Text(

                            receta!.nombre,


                            style:
                                const TextStyle(
                              fontSize: 22,
                              fontWeight:
                                  FontWeight.bold,
                            ),

                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}