import 'package:flutter/material.dart';

import '../models/receta.dart';
import '../screens/detalle_receta_screen.dart';

class BuscadorRecetas extends SearchDelegate {

  final List<Receta> recetas;

  BuscadorRecetas(this.recetas);


  List<Receta> buscar(String texto) {

    texto = texto.toLowerCase();

    return recetas.where((receta) {

      return receta.nombre
              .toLowerCase()
              .contains(texto) ||

          receta.categoria
              .toLowerCase()
              .contains(texto);

    }).toList();

  }


  @override
  List<Widget>? buildActions(
      BuildContext context) {

    return [

      IconButton(
        icon: const Icon(
          Icons.clear,
        ),

        onPressed: () {
          query = '';
        },
      ),

    ];
  }



  @override
  Widget? buildLeading(
      BuildContext context) {

    return IconButton(

      icon:
          const Icon(Icons.arrow_back),

      onPressed: () {
        close(context, null);
      },

    );
  }



  @override
  Widget buildResults(
      BuildContext context) {

    final resultados =
        buscar(query);


    if (resultados.isEmpty) {

      return const Center(
        child: Text(
          'No se encontraron recetas',
        ),
      );

    }


    return ListView.builder(

      itemCount:
          resultados.length,


      itemBuilder:
          (context,index) {

        final receta =
            resultados[index];


        return Card(

          margin:
              const EdgeInsets.all(10),


          child:
              ListTile(

            leading:
                Image.network(
              receta.imagen,
              width: 60,
              height: 60,
              fit: BoxFit.cover,

              errorBuilder:
                  (_,__,___) {
                return const Icon(
                  Icons.restaurant,
                );
              },
            ),


            title:
                Text(receta.nombre),


            subtitle:
                Text(receta.categoria),


            onTap: () {

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>
                      DetalleRecetaScreen(
                    receta: receta,
                  ),
                ),
              );

            },

          ),
        );

      },
    );
  }




  @override
  Widget buildSuggestions(
      BuildContext context) {

    final resultados =
        buscar(query);


    return ListView.builder(

      itemCount:
          resultados.length,


      itemBuilder:
          (context,index) {

        final receta =
            resultados[index];


        return ListTile(

          leading:
              const Icon(
            Icons.search,
          ),

          title:
              Text(
            receta.nombre,
          ),


          onTap: () {

            query =
                receta.nombre;

            showResults(context);

          },

        );

      },
    );
  }
}