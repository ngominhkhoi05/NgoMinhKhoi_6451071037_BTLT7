import 'package:flutter/material.dart';

void main() {
  runApp(const Cau7App());
}

class Cau7App extends StatelessWidget {
  const Cau7App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Câu 7',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(body: Center(child: Text('Câu 7'))),
    );
  }
}
