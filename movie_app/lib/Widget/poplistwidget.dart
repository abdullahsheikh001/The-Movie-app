import 'package:flutter/material.dart';

class Poplistwidget extends StatelessWidget {
  const Poplistwidget({super.key, required this.poplist});

  final List<String> poplist;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: poplist.length,
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
            poplist[index],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
