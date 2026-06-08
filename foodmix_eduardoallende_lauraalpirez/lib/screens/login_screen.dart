import 'package:flutter/material.dart';

import '../data/session.dart';
import '../data/users.dart';

import 'register_screen.dart';
import 'splash_screen.dart';


class LoginScreen extends StatefulWidget {

  const LoginScreen({
    super.key,
  });


  @override
  State<LoginScreen> createState() =>
      _LoginScreenState();

}



class _LoginScreenState
    extends State<LoginScreen> {


  final usuarioController =
      TextEditingController();


  final passwordController =
      TextEditingController();


  bool ocultarPassword = true;



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(

        width: double.infinity,
        height: double.infinity,


        decoration: const BoxDecoration(

          gradient: LinearGradient(

            begin: Alignment.topLeft,

            end: Alignment.bottomRight,

            colors: [

              Color(0xff00A86B),

              Color(0xffE8FFF5),

            ],

          ),

        ),


        child: Center(

          child: SingleChildScrollView(

            padding:
                const EdgeInsets.all(25),


            child: Card(

              child: Padding(

                padding:
                    const EdgeInsets.all(25),


                child: Column(

                  mainAxisSize:
                      MainAxisSize.min,


                  children: [


                    Container(

                      padding:
                          const EdgeInsets.all(20),


                      decoration:
                          const BoxDecoration(

                        color:
                            Color(0xff00A86B),

                        shape:
                            BoxShape.circle,

                      ),


                      child: const Icon(

                        Icons.restaurant_menu,

                        size: 60,

                        color: Colors.white,

                      ),

                    ),



                    const SizedBox(
                      height: 20,
                    ),



                    const Text(

                      "Recetas",

                      style: TextStyle(

                        fontSize: 32,

                        fontWeight:
                            FontWeight.bold,

                      ),

                    ),



                    const Text(
                      "Descubre nuevos sabores",
                    ),



                    const SizedBox(
                      height: 25,
                    ),



                    TextField(

                      controller:
                          usuarioController,


                      decoration:
                          const InputDecoration(

                        labelText:
                            "Usuario",

                        prefixIcon:
                            Icon(Icons.person),

                      ),

                    ),



                    const SizedBox(
                      height: 15,
                    ),



                    TextField(

                      controller:
                          passwordController,


                      obscureText:
                          ocultarPassword,


                      decoration:
                          InputDecoration(

                        labelText:
                            "Contraseña",


                        prefixIcon:
                            const Icon(
                              Icons.lock,
                            ),


                        suffixIcon:
                            IconButton(

                          icon: Icon(

                            ocultarPassword
                                ? Icons
                                    .visibility_off
                                : Icons
                                    .visibility,

                          ),


                          onPressed: () {

                            setState(() {

                              ocultarPassword =
                                  !ocultarPassword;

                            });

                          },

                        ),

                      ),

                    ),



                    const SizedBox(
                      height: 25,
                    ),



                    SizedBox(

                      width:
                          double.infinity,


                      child:
                          ElevatedButton(


                        onPressed: () {


                          final usuario =
                              usuarioController
                                  .text
                                  .trim();


                          final password =
                              passwordController
                                  .text
                                  .trim();



                          if (usuario.isEmpty ||
                              password.isEmpty) {


                            ScaffoldMessenger.of(context)
                                .showSnackBar(

                              const SnackBar(

                                content:
                                    Text(
                                  "Completa todos los campos",
                                ),

                              ),

                            );


                            return;

                          }



                          if (!Users.cuentas
                              .containsKey(usuario)) {


                            ScaffoldMessenger.of(context)
                                .showSnackBar(

                              const SnackBar(

                                content:
                                    Text(
                                  "Usuario no registrado",
                                ),

                              ),

                            );


                            return;

                          }



                          if (Users.cuentas[usuario] !=
                              password) {


                            ScaffoldMessenger.of(context)
                                .showSnackBar(

                              const SnackBar(

                                content:
                                    Text(
                                  "Contraseña incorrecta",
                                ),

                              ),

                            );


                            return;

                          }



                          Session.usuario =
                              usuario;



                          Navigator.pushReplacement(

                            context,

                            MaterialPageRoute(

                              builder: (_) =>
                                  const SplashScreen(),

                            ),

                          );


                        },


                        child:
                            const Text(
                          "Iniciar sesión",
                        ),

                      ),

                    ),



                    TextButton(

                      onPressed: () {


                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder: (_) =>
                                const RegisterScreen(),

                          ),

                        );


                      },


                      child:
                          const Text(
                        "Crear cuenta",
                      ),

                    ),


                  ],

                ),

              ),

            ),

          ),

        ),

      ),

    );

  }

}