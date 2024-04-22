import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widget/custom_stack.dart';
import '../widget/custom_text_quran_kareem.dart';
import '../widget/custom_text_title.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextQuranKareem(),
            const CustomTextTitle(),
            const SizedBox(height: 30),
            CustomStack(),
          ],
        ),
      ),
    );
  }
}
