import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

class SquareRootCubit extends Cubit<double> {
  SquareRootCubit() : super(0);

  // Method to calculate the square root of the entered number
  void calculateSquareRoot(double value) {
    final squareRoot = sqrt(value); // Calculate the square root
    emit(squareRoot); // Emit the result
  }
}
