import 'package:bloc_starter/cubit/dashboard_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Flexible(
            child: GridView(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              children: <Widget>[
                Card(
                  child: InkWell(
                    onTap: () {
                      context.read<DashboardCubit>().openCounterView(context);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(Icons.add, size: 48),
                        Text('Counter Cubit'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () {
                      context
                          .read<DashboardCubit>()
                          .openArithmeticView(context);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(Icons.calculate, size: 48),
                        Text('Arithmetic Cubit'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () {
                      context.read<DashboardCubit>().openStudenView(context);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(Icons.person, size: 48),
                        Text('Student Cubit'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () {
                      context
                          .read<DashboardCubit>()
                          .openSimpleInterestView(context);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(Icons.add, size: 48),
                        Text('Simple Interest Cubit'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () {
                      context.read<DashboardCubit>().openAreaOfCircle(context);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(Icons.circle, size: 48),
                        Text('Area of Circle Cubit'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () {
                      context
                          .read<DashboardCubit>()
                          .openSquareRootView(context);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(Icons.square, size: 48),
                        Text('Squareroot Cubit'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 10),
        ],
      ),
    );
  }
}
