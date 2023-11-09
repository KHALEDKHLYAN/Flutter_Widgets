import 'package:flutter/material.dart';

class LocationDetail extends StatelessWidget {
  const LocationDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location Detail'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          section("One", Colors.red),
          section("Two!", Colors.blue),
          section("Three!", Colors.green)
        ],
      ),
    );
  }
}

Widget section(String title, Color color) {
  return Container(
    decoration: BoxDecoration(
      color: color,
    ),
    child: Text(title),
  );
}
