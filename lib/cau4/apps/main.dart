import 'package:flutter/material.dart';

void main() {
  runApp(const Cau4App());
}

class Cau4App extends StatelessWidget {
  const Cau4App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Câu 4',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(body: Center(child: Text('Câu 4'))),
    );
  }
}
