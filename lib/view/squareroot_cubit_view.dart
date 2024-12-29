import 'package:bloc_starter/cubit/squareroot_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// Correct import

class SquareRootScreen extends StatefulWidget {
  const SquareRootScreen({super.key});

  @override
  _SquareRootScreenState createState() => _SquareRootScreenState();
}

class _SquareRootScreenState extends State<SquareRootScreen> {
  final TextEditingController valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SquareRootCubit>(
      create: (context) => SquareRootCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Square Root Calculator'),
        ),
        body: BlocBuilder<SquareRootCubit, double>(
          builder: (context, result) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: valueController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Enter a number',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Square Root: $result',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      final value = double.tryParse(valueController.text) ?? 0;
                      context
                          .read<SquareRootCubit>()
                          .calculateSquareRoot(value);
                    },
                    child: const Text('Calculate Square Root'),
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
