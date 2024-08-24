import 'package:flutter/material.dart';
import 'package:movie_app/Screens/Splash.dart';

 void main(){

  runApp(const movie_app());
 }

  // ignore: camel_case_types
  class movie_app extends StatelessWidget{
  const movie_app({super.key});

 
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp( 
     
     debugShowCheckedModeBanner: false,
     theme: ThemeData(useMaterial3: true),
     home: const Splashscreen(),
    );
  }
 }