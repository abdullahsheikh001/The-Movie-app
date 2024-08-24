import 'package:flutter/material.dart';

class Gridscreen extends StatefulWidget {
  Gridscreen({super.key});

  @override
  State<Gridscreen> createState() => _GridscreenState();
}

class _GridscreenState extends State<Gridscreen> with SingleTickerProviderStateMixin {
  late AnimationController _animatedcontroller2;

  @override
  void dispose() {
    _animatedcontroller2.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _animatedcontroller2 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
      lowerBound: 0,
      upperBound: 1,
    );
    _animatedcontroller2.forward();
  }

  final List<String> gridlist = [
   "assets/images/em.jpg",
    "assets/images/spiderman.jpg",
    "assets/images/batman.jpg",
    "assets/images/jon.jpg",
    "assets/images/MI.jpg",
    "assets/images/ava.jpg",
    "assets/images/boys.jpg",
    "assets/images/pur.jpg",
    "assets/images/hod.jpg",
    "assets/images/dd.jpg",
    "assets/images/god.jpg",
    "assets/images/wol.jpg",
    "assets/images/boy.jpg",
    "assets/images/car.jpg",
    "assets/images/gd.jpg",
    "assets/images/i.jpg",
    "assets/images/inside.jpg",
    "assets/images/mu.jpg",
    "assets/images/onw.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animatedcontroller2,
      builder: (context, child) {
        return ScaleTransition(
          scale: Tween<double>(begin: 0.05, end: 1.0).animate(
            CurvedAnimation(
              parent: _animatedcontroller2,
              curve: Curves.easeOutBack,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: const Text(
                "Trending",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              iconTheme: const IconThemeData(color: Colors.white),
            ),
            body: GridView.builder(
              itemCount: gridlist.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 items per row
                mainAxisSpacing: 15.0,
                crossAxisSpacing: 15.0,
                childAspectRatio: 0.75, // Aspect ratio for taller items
              ),
              itemBuilder: (context, index) {
                return Container(
                  width: 200, // Increased width
                  height: 300, // Increased height
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                    child: Image.asset(
                      gridlist[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
