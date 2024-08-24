import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Bottomnavbar extends StatelessWidget {
  const Bottomnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(backgroundColor: Colors.blue, color: Colors.black,         items: const [
      Icon(Icons.home, color: Colors.white,),
       Icon(Icons.movie, color: Colors.white,),
        Icon(Icons.folder, color: Colors.white,),
         Icon(Icons.tag_faces, color: Colors.white,),
          Icon(Icons.menu, color: Colors.white,),
    ]);
  }
}
