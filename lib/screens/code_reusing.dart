import 'package:flutter/material.dart';

class ReusingCode extends StatelessWidget {
  const ReusingCode({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Custom WIdget'),
          backgroundColor: Colors.blueGrey,
        ),
      ),
    );
  }
}