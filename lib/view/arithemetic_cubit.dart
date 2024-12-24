import 'package:flutter/material.dart';

class ArithmeticCubitScreen extends StatefulWidget {
  const ArithmeticCubitScreen({super.key});

  @override
  _ArithmeticCubitScreenState createState() => _ArithmeticCubitScreenState();
}

class _ArithmeticCubitScreenState extends State<ArithmeticCubitScreen> {
  final TextEditingController firstNumberController = TextEditingController();
  final TextEditingController secondNumberController = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic Cubit'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'First Number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Second Number',
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
              onPressed: () {},
              child: const Text('Add'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Subtract'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Multiply'),
            ),
          ],
        ),
      ),
    );
  }
}
