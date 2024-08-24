import 'package:flutter/material.dart';

class Animatedwidget extends StatelessWidget {
  const Animatedwidget({super.key, required this.animatedlist});

  final List<String> animatedlist;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: animatedlist.length,
      separatorBuilder: (context, index) => const SizedBox(
        width: 20,
      ),
      itemBuilder: (context, index) {
        return Container(
          width: 120,  // Set a fixed width for each item
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Image.asset(
            animatedlist[index],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
