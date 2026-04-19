import 'package:flutter/material.dart';

void main() {
  runApp(const Cau6App());
}

class Cau6App extends StatelessWidget {
  const Cau6App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Câu 6',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(body: Center(child: Text('Câu 6'))),
    );
  }
}
