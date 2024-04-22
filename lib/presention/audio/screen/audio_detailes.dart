import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioDetails extends StatefulWidget {
  const AudioDetails({super.key});

  @override
  State<AudioDetails> createState() => _AudioDetailsState();
}

class _AudioDetailsState extends State<AudioDetails> {
  ///audio...///
  final audio = AudioPlayer();
  bool isPlaying = false;
  Duration positon = Duration.zero;
  Duration duration = Duration.zero;

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
                  value: positon.inSeconds.toDouble(),
                  onChanged: (va) {}),),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${positon}'),
                  Text('${duration - positon }'),
                ],),
            ),
            CircleAvatar(radius: 30,
              child: IconButton(
                iconSize: 40,
                icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                onPressed: ()async{
                  if(isPlaying){
                   await audio.pause();
                  }else{
                //    String url='';
                    await  audio.play('' as Source);
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
