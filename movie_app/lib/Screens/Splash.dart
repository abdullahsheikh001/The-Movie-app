import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_app/Screens/Homescreen.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Center(
            child: SizedBox(
              width: 300,
              height: 400,
              child: LottieBuilder.asset("assets/images/sduyow0DYf.json"),
            ),
          )
        ],
      ),
      nextScreen: const Homescreen(),
      splashIconSize: 400,
      animationDuration: const Duration(seconds: 3),
      backgroundColor: Colors.black,
    );
  }
}
