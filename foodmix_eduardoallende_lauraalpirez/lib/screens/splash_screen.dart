import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_screen.dart';


class SplashScreen extends StatefulWidget {

  const SplashScreen({
    super.key,
  });


  @override
  State<SplashScreen> createState() =>
      _SplashScreenState();

}



class _SplashScreenState
    extends State<SplashScreen> {


  @override
  void initState() {

    super.initState();


    Timer(
      const Duration(seconds: 5),

      () {

        if(!mounted) return;


        Navigator.pushReplacement(

          context,

          MaterialPageRoute(
            builder: (_) =>
                const HomeScreen(),
          ),

        );

      },

    );

  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(

        width:
            double.infinity,

        height:
            double.infinity,


        decoration:
            const BoxDecoration(

          gradient:
              LinearGradient(

            begin:
                Alignment.topLeft,

            end:
                Alignment.bottomRight,

            colors: [

              Color(0xff00A86B),

              Color(0xffE8FFF5),

            ],

          ),

        ),



        child:
            Center(

          child:
              Column(

            mainAxisAlignment:
                MainAxisAlignment.center,


            children: [


              SizedBox(

                height:220,

                child:
                    Lottie.asset(

                  'assets/animations/loading.json',

                  repeat:true,

                ),

              ),



              const SizedBox(
                height:20,
              ),



              const Text(

                'Cargando menú...',

                style:
                    TextStyle(

                  fontSize:26,

                  fontWeight:
                      FontWeight.bold,

                  color:
                      Colors.white,

                ),

              ),

            ],

          ),

        ),

      ),

    );

  }

}