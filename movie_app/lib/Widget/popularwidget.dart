import 'package:flutter/material.dart';

class Popularwidget extends StatefulWidget {
  const Popularwidget({super.key});

  @override
  State<Popularwidget> createState() => _PopularwidgetState();
}

class _PopularwidgetState extends State<Popularwidget> {
  final List<String> popularlist = [
    "Movies",
    "Tv series",
  ];

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: popularlist.asMap().entries.map((entry) {
        int currentIndex = entry.key;
        String category = entry.value;

        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = currentIndex;
            });
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent,
            ),
            child: Text(
              category,
              style: TextStyle(
                color: selectedIndex == currentIndex ? Colors.blue : Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
