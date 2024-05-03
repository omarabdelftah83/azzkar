import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/model/azkar_model.dart';
import 'event_azkar.dart';
import 'state_azkar.dart';

class AzkarBloc extends Bloc<AzkarEvent, AzkarState> {
      AzkarBloc() : super(AzkarLoading()) {
    ///event ...///
    on<LoadAzkarData>((event, emit) async {/// معناها ان في حدث هنا هيحصل ///
      emit(AzkarLoading());///// يُرسل حالة "تحميل" لتبليغ واجهة المستخدم/
      try {
        String jsonString = await rootBundle.loadString('assets/json/adhkar.json');
        Map<String, dynamic> jsonData = json.decode(jsonString);
        List<dynamic> data = jsonData['data'];
        final azkarList = data.map((item) => AzkarModel.fromJson(item)).toList();
        emit(AzkarLoaded(azkarList));
      } catch (error) {
        emit(AzkarError('Error loading JSON data: $error'));
      }
    });
  }
}
