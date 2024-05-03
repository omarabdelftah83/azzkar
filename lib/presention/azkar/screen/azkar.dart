// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import '../../../core/const.dart';
// import '../../../data/model/azkar_model.dart';
// import '../widget/padding_list_azkar.dart';
//
// class Azkar extends StatefulWidget {
//   const Azkar({Key? key}) : super(key: key);
//
//   @override
//   State<Azkar> createState() => _AzkarState();
// }
//
// class _AzkarState extends State<Azkar> {
//   List<AzkarModel> azkarList = [];
//
//   @override
//   void initState() {
//     super.initState();
//     _loadData();
//   }
//
//   Future<void> _loadData() async {
//     try {
//       String jsonString = await rootBundle.loadString('assets/json/adhkar.json');
//       Map<String, dynamic> jsonData = json.decode(jsonString);
//       List<dynamic> data = jsonData['data'];
//       setState(() {
//         azkarList = data.map((item) => AzkarModel.fromJson(item)).toList();
//       });
//     } catch (error) {
//       print('Error loading JSON data: $error');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: homeAppBar(context),
//       backgroundColor: Colors.green,
//       body: Column(
//         children: [
//           Expanded(
//             child: Stack(
//               children: [
//                 ///container ...////
//                 Container(
//                   margin: const EdgeInsets.only(top: 50),
//                   decoration: const BoxDecoration(
//                     color: kBackgroundColor,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(40),
//                       topRight: Radius.circular(40),
//                     ),
//                   ),
//                 ),
//                 /// PaddedListView...////
//                 PaddedListView(azkarList: azkarList),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   AppBar homeAppBar(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.green,
//       elevation: 0,
//       title: const Padding(
//         padding: EdgeInsets.only(left: 50),
//         child: Padding(
//           padding: EdgeInsets.only( top: 5),
//           child: Text(
//             'الأدعيه والأزكار  ',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//               fontSize: 25,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/const.dart';
import '../control/bloc_azkar.dart';
import '../control/event_azkar.dart';
import '../control/state_azkar.dart';
import '../widget/padding_list_azkar.dart';

class AzkarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AzkarBloc()..add(LoadAzkarData()),
      child: Scaffold(
        appBar: homeAppBar(context),
        backgroundColor: Colors.green,
        body:Column(
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
                    padding: const EdgeInsets.only(top: 8.0),
                    child: BlocBuilder<AzkarBloc, AzkarState>(
                      builder: (context, state) {
                        if (state is AzkarLoading) {
                          return const Center(child: CircularProgressIndicator());
                        } else if (state is AzkarLoaded) {
                          return PaddedListView(azkarList: state.azkarList);
                        } else if (state is AzkarError) {
                          return Center(child: Text(state.errorMessage));
                        }

                        return Container();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.green,
    elevation: 0,
    title: const Padding(
      padding: EdgeInsets.only(left: 50),
      child: Padding(
        padding: EdgeInsets.only(top: 5),
        child: Text(
          'الأدعيه والأزكار  ',
          textAlign: TextAlign.center,
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
