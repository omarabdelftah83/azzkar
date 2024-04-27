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
        child: SingleChildScrollView( // يسمح بالتمرير للنص الطويل
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 2),
                ),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  quranModel.ar,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30, // زيادة حجم الخط ليتناسب مع المصحف
                    height: 1.5, // زيادة المسافات بين الأسطر
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
