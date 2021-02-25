import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Vx.red600,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(color: Vx.red600),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      HeightBox(80),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 140,
                          child: Image.asset('assets/logo.png'),
                        ),
                      ),
                      Padding(padding: const EdgeInsets.only(bottom: 100)),
                      Text(
                        'Bharat Vyapaar',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: GoogleFonts.ubuntu().fontFamily,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(padding: const EdgeInsets.only(bottom: 20)),
                      Text(
                        'Making India Atmanirbhar !!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: GoogleFonts.merienda().fontFamily,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
