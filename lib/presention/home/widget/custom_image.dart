import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding:  EdgeInsets.all(15.0),
              child: Container(
                width: 400,
                height: 200,
                decoration:  BoxDecoration(
                  border: Border.all(color: Colors.black.withOpacity(0.3)),
                  color: Colors.green.withOpacity(0.7),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            const Positioned(
              top: 0,
              right: 5,
              child: Image(image: AssetImage('assets/quran tasbee 1.png')),
            ),
            const Positioned(
              top: 50,
              left: 50,
              child: Image(image: AssetImage('assets/Vector.png')),
            ),
            const Positioned(
              top: 100,
              left: 140,
              child: Image(image: AssetImage('assets/Vector.png')),
            ),
            const Positioned(
              top: 160,
              left: 80,
              child: Image(image: AssetImage('assets/Vector.png')),
            ),
          ],
        ),
      ],
    );
  }
}
