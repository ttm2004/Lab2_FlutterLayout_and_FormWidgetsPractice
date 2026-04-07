import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: LayoutApp(),
        ),
    );
  }
}

class LayoutApp extends StatelessWidget {
  const LayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('I\'m in a Column and Centered. The below is a row', textAlign: TextAlign.center),
        // Text('I\'m in a Column and Centered. The below is a row'),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var color in [Colors.red, Colors.green, Colors.blue])
              Container(width: 100, height: 100, color: color),
          ],
        ),
        const SizedBox(height: 20),
        Stack(
          // alignment: Alignment.center,
          alignment: Alignment.topLeft, //Tark 2 Stack -> topleft alignment
            children: [
            Container(
              width: 300,
              height: 200,
              color: Colors.yellow,
            ),
            const Text(
              'Stacked on Yellow Box',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}

