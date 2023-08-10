import 'package:flutter/material.dart';

class AyatElquran extends StatelessWidget {
  String ayat;
  int index;

  AyatElquran({required this.ayat, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          "($index) $ayat",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
