import 'package:flutter/material.dart';

void main() {
  runApp(const Cau5App());
}

class Cau5App extends StatelessWidget {
  const Cau5App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Câu 5',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(body: Center(child: Text('Câu 5'))),
    );
  }
}
