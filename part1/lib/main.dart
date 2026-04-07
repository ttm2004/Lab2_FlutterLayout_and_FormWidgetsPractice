import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffold(body: LayoutApp()));
  }
}

class LayoutApp extends StatelessWidget {
  const LayoutApp({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Text('I\'m in a Column and Centered. The below is a row', textAlign: TextAlign.center),
  //       // Text('I\'m in a Column and Centered. The below is a row'),
  //       const SizedBox(height: 20),
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           for (var color in [Colors.red, Colors.green, Colors.blue])
  //             Container(width: 100, height: 100, color: color),
  //         ],
  //       ),
  //       const SizedBox(height: 20),
  //       Stack(
        
  //         // alignment: Alignment.center,
          
  //         alignment: Alignment.topLeft, //Tark 2 Stack -> topleft alignment
          
  //           children: [
  //           Container(
  //             width: 300,
  //             height: 200,
  //             color: Colors.yellow,
  //           ),
  //           const Text(
  //             'Stacked on Yellow Box',
  //             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  //           ),
  //         ],
  //       )

  //     ],
  //   );
  // }
  // Task 3: Add padding to the entire Column
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'I\'m in a Column and Centered. The below is a row',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // for (var color in [Colors.red, Colors.green, Colors.blue])
              //   Container(width: 100, height: 100, color: color),

              // Task 4: Use a list of colors to generate the containers in the Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: 100, height: 100, color: Colors.red),
                  Container(width: 100, height: 100, color: Colors.green),
                  Container(width: 100, height: 100, color: Colors.blue),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Stack(
            alignment: Alignment.topLeft, // Task 2
            children: [
              Container(width: 300, height: 200, color: Colors.yellow),
              const Text(
                'Stacked on Yellow Box',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
