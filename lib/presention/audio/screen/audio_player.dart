import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../../core/const.dart';
import '../../../../../data/model/azkar_model.dart';
import 'dart:convert';
import 'audio_detailes.dart';

class AudioPlayerFromJson extends StatefulWidget {
  const AudioPlayerFromJson({Key? key}) : super(key: key);

  @override
  State<AudioPlayerFromJson> createState() => _AzkarState();
}

class _AzkarState extends State<AudioPlayerFromJson> {
  List<QuranModel> quranModel = [];

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    try {
      String jsonString = await rootBundle.loadString('assets/json/Quran.json');
      Map<String, dynamic> jsonData = json.decode(jsonString);
      List<dynamic> data = jsonData['data'];
      setState(() {
        quranModel = data.map((item) => QuranModel.fromJson(item)).toList();
      });
    } catch (error, ff) {
      print('Error loading JSON data: $error  $ff');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                ///container ...////
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 20.0),
                  child: ListView.builder(
                    itemCount: quranModel.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 85,
                        child: Card(
                          color: Colors.white,
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green
                                        .withOpacity(0.7), // لون الدائرة
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.play_circle_filled,
                                      size: 50,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Flexible(
                                  child: Text(
                                    quranModel[index].name,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AudioDetails(),
                              ));

                            },
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar homeAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      elevation: 0,
      title: const Padding(
        padding: EdgeInsets.only(left: 50),
        child: Padding(
          padding: EdgeInsets.only(left: 33.0, top: 5),
          child: Text(
            'القران الكريم',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}