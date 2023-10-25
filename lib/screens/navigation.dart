import 'package:flutter/material.dart';
import 'package:widgets_app_design/screens/detail.dart';

class NavigateScreens extends StatelessWidget {
  const NavigateScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Navigating Screen"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondRoute()),
              );
            },
            child: const Text(
              'Submit Form',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
