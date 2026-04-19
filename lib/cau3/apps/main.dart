import 'package:flutter/material.dart';

void main() {
  runApp(const Cau3App());
}

class Cau3App extends StatelessWidget {
  const Cau3App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Câu 3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(body: Center(child: Text('Câu 3'))),
    );
  }
}
