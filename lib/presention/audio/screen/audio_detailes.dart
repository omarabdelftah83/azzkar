import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioDetails extends StatefulWidget {
  const AudioDetails({Key? key}) : super(key: key);

  @override
  State<AudioDetails> createState() => _AudioDetailsState();
}

class _AudioDetailsState extends State<AudioDetails> {
  bool isPlaying = false;
  Duration position = Duration.zero;
  Duration duration = Duration.zero;
  final audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Slider(
                min: 0,
                max: duration.inSeconds.toDouble(),
                value: position.inSeconds.toDouble(),
                onChanged: (va) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${position}'),
                  Text('${duration - position}'),
                ],
              ),
            ),
            CircleAvatar(
              radius: 30,
              child: IconButton(
                iconSize: 40,
                icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                onPressed: () async {
                  if (isPlaying) {
                    await audioPlayer.pause();
                  } else {
                    await audioPlayer.play(UrlSource('assets/audio/007.mp3'));
                  }
                  setState(() {
                    isPlaying = !isPlaying;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
