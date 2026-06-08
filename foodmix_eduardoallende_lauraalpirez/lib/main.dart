import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/recetas_provider.dart';
import 'providers/favoritos_provider.dart';

import 'screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [

        ChangeNotifierProvider(
          create: (_) =>
              RecetasProvider(),
        ),

        ChangeNotifierProvider(
          create: (_) =>
              FavoritosProvider(),
        ),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner:
            false,

    theme: ThemeData(

  useMaterial3: true,

  scaffoldBackgroundColor:
      const Color(0xffF4F7F6),


  colorScheme:
      ColorScheme.fromSeed(
    seedColor:
        const Color(0xff00A86B),
  ),


  appBarTheme:
      const AppBarTheme(

    centerTitle: true,

    backgroundColor:
        Color(0xff00A86B),

    foregroundColor:
        Colors.white,

    elevation: 0,

  ),



  cardTheme:
      CardThemeData(

    elevation: 8,

    shadowColor:
        Colors.black26,

    shape:
        RoundedRectangleBorder(

      borderRadius:
          BorderRadius.circular(24),

    ),

  ),



  inputDecorationTheme:
      InputDecorationTheme(

    filled: true,

    fillColor:
        Colors.white,


    contentPadding:
        const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 18,
    ),



    border:
        OutlineInputBorder(

      borderRadius:
          BorderRadius.circular(20),

      borderSide:
          BorderSide.none,

    ),

  ),



  elevatedButtonTheme:
      ElevatedButtonThemeData(

    style:
        ElevatedButton.styleFrom(

      backgroundColor:
          const Color(0xff00A86B),

      foregroundColor:
          Colors.white,


      padding:
          const EdgeInsets.symmetric(
        vertical: 16,
      ),


      shape:
          RoundedRectangleBorder(

        borderRadius:
            BorderRadius.circular(20),

      ),

    ),

  ),

),
        home:
            const LoginScreen(),
      ),
    );
  }
}