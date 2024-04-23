import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RosaryWidget extends StatefulWidget {
  const RosaryWidget({super.key});

  @override
  State<RosaryWidget> createState() => _RosaryWidgetState();
}

class _RosaryWidgetState extends State<RosaryWidget> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.green[200],
          ),
          width: 250,
          height: 50,
          child: Text(
            '$counter',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 70
        ),
        InkWell(
          onTap: counterup,
          child: CircleAvatar(
            backgroundColor: Colors.green[200],
            radius: 100,
          ),
        ),
        const SizedBox(height: 15),
        Container(
          padding: const EdgeInsets.only(left: 230),
          child: CircleAvatar(
            backgroundColor: Colors.green[200],
            radius: 25,
            child: IconButton(
              onPressed: (){
                counterRestart(0);
              },
              icon: const Icon(
                Icons.restart_alt,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
  
  void counterup(){
    setState(() {
      counter++;
    });
  }
  void counterRestart(var rest){
    setState(() {
      counter=rest;
    });
  }
}
