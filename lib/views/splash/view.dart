
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:online_store/views/login/view.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:


          AnimatedSplashScreen(

            centered:true ,
            splashIconSize: 350,
animationDuration: Duration(seconds: 5),
              duration: 3000,
              splash: Container(clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                shape: BoxShape.circle
              ),
                  child: Image.asset('assets/images/online.png',)),
              nextScreen: Login(),
              splashTransition: SplashTransition.rotationTransition,
curve:  Curves.easeInCirc,

              backgroundColor: Colors.white
          ),



    );
  }
}
