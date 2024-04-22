import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextPopular extends StatelessWidget {
  const CustomTextPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 25),
      child: Text(
        'popular',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.black),
      ),
    );
  }
}
