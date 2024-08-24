import 'package:flutter/material.dart';

class Catagoryslider extends StatefulWidget {
  const Catagoryslider({super.key});

  @override
  State<Catagoryslider> createState() => _CatagorysliderState();
}

class _CatagorysliderState extends State<Catagoryslider> {
  final List<String> catagorylist = [
    "Explore",
    "Trending",
    "Schedules",
    "Popular",
    "Top 10 Movies",
    "Top 10 TV Shows",
  ];

  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: catagorylist.asMap().entries.map((show) {
        int index = show.key;
        String catagory = show.value;

        return GestureDetector(
          onTap: () {
            setState(() {
              selectedindex = index;
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
              catagory,
              style: TextStyle(
                color: selectedindex == index ? Colors.blue : Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
