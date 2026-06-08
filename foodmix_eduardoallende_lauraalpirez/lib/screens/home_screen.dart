import 'package:flutter/material.dart';

import 'recetas_screen.dart';
import 'favoritos_screen.dart';
import 'receta_aleatoria_screen.dart';
import 'perfil_screen.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() =>
      _HomeScreenState();
}


class _HomeScreenState
    extends State<HomeScreen> {


  int index = 0;


  final paginas = const [

    RecetasScreen(),

    FavoritosScreen(),

    RecetaAleatoriaScreen(),

    PerfilScreen(),

  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: paginas[index],


      bottomNavigationBar:
          NavigationBar(

        selectedIndex: index,


        onDestinationSelected:
            (value) {

          setState(() {

            index = value;

          });

        },


        destinations: const [

          NavigationDestination(

            icon:
                Icon(Icons.menu_book),

            label:
                'Recetas',

          ),


          NavigationDestination(

            icon:
                Icon(Icons.star),

            label:
                'Favoritos',

          ),


          NavigationDestination(

            icon:
                Icon(Icons.shuffle),

            label:
                'Aleatoria',

          ),


          NavigationDestination(

            icon:
                Icon(Icons.person),

            label:
                'Perfil',

          ),

        ],

      ),

    );

  }

}