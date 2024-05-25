import 'package:flutter/material.dart';

void main() {
  runApp(const TechSavvy());
}

class TechSavvy extends StatelessWidget {
  const TechSavvy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Scaffold(
          body: Center(
            child: Text('Hello World'),
          ),
        ));
  }
}
