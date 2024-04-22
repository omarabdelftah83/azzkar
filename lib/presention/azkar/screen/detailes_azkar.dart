// import 'package:flutter/material.dart';
// import 'package:quran_kareem/data/model/azkar_model.dart';
// class DetalesAzkar extends StatelessWidget {
//    DetalesAzkar({super.key, required this.azkarModel});
//   final AzkarModel  azkarModel ;
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 20,
//             ),
//             // Container(
//             //   height: 70,
//             //   width: 300,
//             //   decoration: BoxDecoration(
//             //     borderRadius: BorderRadius.circular(30),
//             //     color: Colors.purple.withOpacity(0.8),
//             //   ),
//             //   padding: const EdgeInsets.all(16),
//             //   child:  Row(
//             //     children: [
//             //       const SizedBox(width: 40),
//             //       Flexible (
//             //         child: Text(  azkarModel.category,
//             //           textAlign: TextAlign.center,
//             //           style: const TextStyle(
//             //             color: Colors.black,
//             //             fontWeight: FontWeight.bold,
//             //             fontSize: 23,
//             //           ),
//             //         ),
//             //       ),
//             //     ],
//             //   ),
//             // ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: azkarModel.array.length,
//                 itemBuilder: (context, index) {
//                   return Card(
//                     color: Colors.purpleAccent.withOpacity(0.2),
//                     child: ListTile(
//                       title: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           ///container  image  ///
//
//
//                           Flexible(
//                             child: Text(
//                               azkarModel.array[index].text,
//                               style: const TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18,
//                               ),
//                             ),
//
//                           ),
//
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../core/const.dart';
import '../../../data/model/azkar_model.dart';

class DetalesAzkar extends StatelessWidget {
  DetalesAzkar({super.key, required this.azkarModel});

  final AzkarModel azkarModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      //  appBar: AppBar(title: Text('${azkarModel.category}'),),
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                ///background  container ...///
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListView.builder(
                    itemCount: azkarModel.array.length,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.white,
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  azkarModel.array[index].text,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
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
      title: Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            '${azkarModel.category}',
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
          ),
        ),
      ),
    );
  }
}
