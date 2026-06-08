import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/receta.dart';
import '../providers/recetas_provider.dart';


class DetalleRecetaScreen extends StatelessWidget {

  final Receta receta;


  const DetalleRecetaScreen({
    super.key,
    required this.receta,
  });


  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(

        title: Text(
          receta.nombre,
        ),


        actions: [


          if(receta.creadaPorUsuario)

          IconButton(

            icon: const Icon(
              Icons.delete,
            ),


            onPressed: () {


              showDialog(

                context: context,

                builder: (context){


                  return AlertDialog(

                    title:
                        const Text(
                      'Eliminar receta',
                    ),


                    content:
                        const Text(
                      '¿Quieres eliminar esta receta?',
                    ),


                    actions: [


                      TextButton(

                        onPressed: (){

                          Navigator.pop(context);

                        },

                        child:
                            const Text(
                          'Cancelar',
                        ),

                      ),



                      TextButton(

                        onPressed: (){


                          Provider.of<RecetasProvider>(
                            context,
                            listen:false,

                          ).eliminarReceta(
                            receta.id,
                          );



                          Navigator.pop(context);

                          Navigator.pop(context);


                        },

                        child:
                            const Text(
                          'Eliminar',
                        ),

                      ),

                    ],

                  );

                },

              );


            },

          ),

        ],

      ),



      body: SingleChildScrollView(

        padding:
            const EdgeInsets.all(20),


        child: Column(

          crossAxisAlignment:
              CrossAxisAlignment.start,


          children: [



            ClipRRect(

              borderRadius:
                  BorderRadius.circular(20),


              child: Image.network(

                receta.imagen,


                height:250,


                width:
                    double.infinity,


                fit:
                    BoxFit.cover,


                errorBuilder:
                    (context,error,stack){

                  return Container(

                    height:250,

                    width:
                        double.infinity,


                    color:
                        Colors.grey.shade300,


                    child:
                        const Icon(
                      Icons.restaurant,
                      size:80,
                    ),

                  );

                },

              ),

            ),



            const SizedBox(
              height:20,
            ),



            Text(

              receta.nombre,


              style:
                  const TextStyle(

                fontSize:28,

                fontWeight:
                    FontWeight.bold,

              ),

            ),



            const SizedBox(
              height:15,
            ),



            Text(

              receta.descripcion,


              style:
                  const TextStyle(
                fontSize:16,
              ),

            ),



            const SizedBox(
              height:25,
            ),



            const Text(

              "Ingredientes",


              style:
                  TextStyle(

                fontSize:22,

                fontWeight:
                    FontWeight.bold,

              ),

            ),



            const SizedBox(
              height:10,
            ),



            ...receta.ingredientes.map(

              (e)=>Text(

                "• $e",


                style:
                    const TextStyle(
                  fontSize:16,
                ),

              ),

            ),



            const SizedBox(
              height:25,
            ),



            const Text(

              "Preparación",


              style:
                  TextStyle(

                fontSize:22,

                fontWeight:
                    FontWeight.bold,

              ),

            ),



            const SizedBox(
              height:10,
            ),



            Text(

              receta.preparacion,


              style:
                  const TextStyle(
                fontSize:16,
              ),

            ),



            const SizedBox(
              height:25,
            ),



            Text(

              "Tiempo: ${receta.tiempoPreparacion} minutos",


              style:
                  const TextStyle(

                fontWeight:
                    FontWeight.bold,

              ),

            ),

          ],

        ),

      ),

    );

  }

}