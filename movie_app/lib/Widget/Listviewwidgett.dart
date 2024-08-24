import 'package:flutter/material.dart';

class Listviewwidgett extends StatelessWidget {
  const Listviewwidgett({super.key, required this.listmove});

  final List<String> listmove;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: listmove.length,
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
            listmove[index],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
