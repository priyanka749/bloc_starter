import 'package:flutter_bloc/flutter_bloc.dart';

class ArithemeticCubit extends Cubit<int> {
  ArithemeticCubit() : super(0);

  void add(int value) {
    emit(state + value);
  }

  void subtract(int value) {
    emit(state - value);
  }

  void multiply(int value) {
    emit(state * value);
  }

  void divide(int value) {
    if (value == 0) {
      throw Exception("Cannot divide by zero");
    }
    emit(state ~/ value);
  }

  void reset() {
    emit(0);
  }
}
