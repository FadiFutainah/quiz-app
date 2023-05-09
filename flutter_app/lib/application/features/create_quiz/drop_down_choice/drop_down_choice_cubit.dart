import 'package:flutter_bloc/flutter_bloc.dart';

class DropDownChoiceCubit extends Cubit<int> {
  DropDownChoiceCubit(int initialValue) : super(initialValue);

  void chooseValue(int value) => emit(value);
}
