import 'package:flutter_bloc/flutter_bloc.dart';

class CircleCubit extends Cubit<double> {
  CircleCubit() : super(0);

  void calculateAreaOfCircle(double radius) {
    final area = 3.14159 * radius * radius;
    emit(area);
  }
}
