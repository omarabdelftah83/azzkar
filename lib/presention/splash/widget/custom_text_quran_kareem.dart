
import 'package:flutter/material.dart';
class TextQuranKareem extends StatelessWidget {
  const TextQuranKareem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 70, left: 0),
      child: Text(
        'Quran app',
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
