// States
import '../../../data/model/azkar_model.dart';

abstract class AzkarState {}

class AzkarLoading extends AzkarState {}

class AzkarLoaded extends AzkarState {
  final List<AzkarModel> azkarList;

  AzkarLoaded(this.azkarList);
}

class AzkarError extends AzkarState {
  final String errorMessage;
  AzkarError(this.errorMessage);
}
