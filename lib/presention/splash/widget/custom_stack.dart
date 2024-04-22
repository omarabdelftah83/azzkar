import 'package:flutter/material.dart';

import '../../home/screen/home.dart';

class CustomStack extends StatelessWidget {
  CustomStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Container(
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black.withOpacity(0.3)),
                  color: Colors.green.withOpacity(0.7),borderRadius: BorderRadius.circular(20)),
              child: Image(image: AssetImage('assets/quran tasbee 1.png'),fit: BoxFit.contain,),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 135,
          child: Container(
            width: 130,
            height: 50,

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // لون الزر المرتفع
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Home()));
              },
              child: const Text(
                'Get started',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
