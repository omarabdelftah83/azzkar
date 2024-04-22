
import 'package:flutter/material.dart';

class CustomTextTitle extends StatelessWidget {
  const CustomTextTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 0),
      child: Text(
        'Learn Quran and \n Recite once everyday',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w900,
          color: Colors.grey,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
