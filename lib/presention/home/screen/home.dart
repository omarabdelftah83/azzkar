
import 'package:flutter/material.dart';
import '../widget/custom_image.dart';
import '../widget/custom_row.dart';
import '../widget/custom_row_squre.dart';
import '../widget/custom_text.dart';
import '../widget/custom_text_popular.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height:
            MediaQuery.of(context).size.height, // Set height to screen height
        child:  const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              CustomRow(),
              SizedBox(
                height: 20,
              ),
              CustomText(text: 'Learn Quran and '),
              SizedBox(
                height: 30,
              ),
              CustomImage(),
              SizedBox(
                height: 20,
              ),
              CustomTextPopular(),
              SizedBox(
                height: 30,
              ),
              CustomRowSquare(),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
