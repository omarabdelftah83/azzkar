import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/model/azkar_model.dart';
import '../screen/detailes_azkar.dart';

class PaddedListView extends StatelessWidget {
  final List<AzkarModel> azkarList;

  const PaddedListView({Key? key, required this.azkarList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: ListView.builder(
        itemCount: azkarList.length,
        itemBuilder: (context, index) {
          return Container(
            height: 85,
            child: Card(
              color: Colors.white,
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ///container id ...//
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                       // border: Border.all(color: Colors.black),
                        shape: BoxShape.circle,
                        color: Colors.green.withOpacity(0.7), // لون الدائرة
                      ),
                      child: Center(
                        child: Text(
                          '${azkarList[index].id}',
                          style: const TextStyle(
                            color: Colors.white, //
                            fontSize: 16, //
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    /// text category ...//
                    Flexible(
                      child: Text(
                        azkarList[index].category,
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
                    builder: (context) => DetalesAzkar(azkarModel: azkarList[index]),
                  ));
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
