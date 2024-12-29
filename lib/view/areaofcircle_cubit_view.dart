import 'package:bloc_starter/cubit/areaofcircle_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});

  @override
  _AreaOfCircleScreenState createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
  final TextEditingController radiusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CircleCubit>(
      create: (context) => CircleCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Area of Circle Calculator'),
        ),
        body: BlocBuilder<CircleCubit, double>(
          builder: (context, result) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    controller: radiusController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Radius (r)',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Result: $result',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      final radius =
                          double.tryParse(radiusController.text) ?? 0;
                      context.read<CircleCubit>().calculateAreaOfCircle(radius);
                    },
                    child: const Text('Calculate Area of Circle'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
