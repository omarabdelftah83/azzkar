import 'package:flutter/material.dart';
import '../../../data/model/azkar_model.dart';

class DetalesQuran extends StatelessWidget {
  final QuranModel quranModel;

  const DetalesQuran({Key? key, required this.quranModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(), // يمكنك إضافة عنوان للشريط العلوي هنا
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 2),
                ),
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(

                    quranModel.ar,textAlign: TextAlign.right,
                    style: const TextStyle(

                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),

                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
