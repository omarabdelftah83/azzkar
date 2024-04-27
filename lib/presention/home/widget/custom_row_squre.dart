import 'package:flutter/material.dart';

import '../../audio/screen/audio_player.dart';
import '../../azkar/screen/azkar.dart';
import '../../quran/screen/quran.dart';
import '../../rosary/rosary_screen.dart';

class CustomRowSquare extends StatelessWidget {
  const CustomRowSquare({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => RosaryScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 25, top: 0, bottom: 42),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.2)),
                    color: Colors.green.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset('assets/Group 80.png'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Quran()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.2)),
                    color: Colors.green.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset('assets/gg.png',),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            InkWell(
              onTap: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Azkar()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 50),
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black.withOpacity(0.2)),
                      color: Colors.green.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset('assets/Group 79.png'),

                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AudioPlayerFromJson()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 60, bottom: 8),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.2)),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green.withOpacity(0.5),
                  ),
                  child: Image.asset('assets/kk.png'),

                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
