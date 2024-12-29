import 'package:bloc_starter/cubit/areaofcircle_cubit.dart';
import 'package:bloc_starter/cubit/arithemetic_cubit.dart';
import 'package:bloc_starter/cubit/counter_cubit.dart';
import 'package:bloc_starter/cubit/simpleinterest_cubit.dart';
import 'package:bloc_starter/cubit/squareroot_cubit.dart';
import 'package:bloc_starter/cubit/student_cubit.dart';
import 'package:bloc_starter/view/areaofcircle_cubit_view.dart';
import 'package:bloc_starter/view/arithemetic_cubit.dart';
import 'package:bloc_starter/view/counter_cubit_view.dart';
import 'package:bloc_starter/view/simpleinterest_cubit_view.dart';
import 'package:bloc_starter/view/squareroot_cubit_view.dart';
import 'package:bloc_starter/view/student_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._counterCubit,
    this._arithmeticCubit,
    this._studentCubit,
    this._SimpleInterestCubit,
    this._CircleCubit,
    this._SquareRootCubit,
  ) : super(null);

  final CounterCubit _counterCubit;
  final ArithmeticCubit _arithmeticCubit;
  final StudentCubit _studentCubit;
  final SimpleInterestCubit _SimpleInterestCubit;
  final CircleCubit _CircleCubit;
  final SquareRootCubit _SquareRootCubit;

  void openCounterView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _counterCubit,
          child: CounterCubitView(),
        ),
      ),
    );
  }

  void openArithmeticView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _arithmeticCubit,
          child: ArithmeticCubitScreen(),
        ),
      ),
    );
  }

  void openStudenView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _studentCubit,
          child: StudentCubitView(),
        ),
      ),
    );
  }

  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _SimpleInterestCubit,
          child: SimpleInterestCubitScreen(),
        ),
      ),
    );
  }

  void openAreaOfCircle(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _CircleCubit,
          child: AreaOfCircleScreen(),
        ),
      ),
    );
  }

  void openSquareRootView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _SquareRootCubit,
          child: SquareRootScreen(),
        ),
      ),
    );
  }
}
