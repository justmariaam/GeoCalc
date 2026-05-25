import 'package:flutter/material.dart';
import 'package:geo_calc/pantallas/catalogo_figuras.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFEAF6FF),
              Color(0xFFB3E5FC),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Image.asset(
                  'assets/images/logo.png',
                  width: 280,
                ),

                const SizedBox(height: 50),

                SizedBox(
                  width: 230,
                  height: 60,

                  child: ElevatedButton(

                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CatalogoFiguras(),
                        ),
                      );

                    },

                    style: ElevatedButton.styleFrom(

                      backgroundColor:
                          const Color(0xFF42A5F5),

                      elevation: 10,

                      shadowColor: Colors.blueAccent,

                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30),
                      ),
                    ),

                    child: const Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center,

                      children: [


                        SizedBox(width: 10),

                        Text(
                          "INICIAR",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}