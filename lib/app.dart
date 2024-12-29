import 'package:bloc_starter/cubit/areaofcircle_cubit.dart';
import 'package:bloc_starter/cubit/arithemetic_cubit.dart';
import 'package:bloc_starter/cubit/counter_cubit.dart';
import 'package:bloc_starter/cubit/dashboard_cubit.dart';
import 'package:bloc_starter/cubit/simpleinterest_cubit.dart';
import 'package:bloc_starter/cubit/squareroot_cubit.dart';
import 'package:bloc_starter/cubit/student_cubit.dart';
import 'package:bloc_starter/view/dashbaard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => CounterCubit()),
          BlocProvider(create: (context) => ArithmeticCubit()),
          BlocProvider(create: (context) => StudentCubit()),
          BlocProvider(create: (context) => SimpleInterestCubit()),
          BlocProvider(create: (context) => CircleCubit()),
          BlocProvider(create: (context) => SquareRootCubit()),
          BlocProvider(
              create: (context) => DashboardCubit(
                    context.read<CounterCubit>(),
                    context.read<ArithmeticCubit>(),
                    context.read<StudentCubit>(),
                    context.read<SimpleInterestCubit>(),
                    context.read<CircleCubit>(),
                    context.read<SquareRootCubit>(),
                  ))
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Flutter Block",
          home: DashboardView(),
        ));
  }
}
