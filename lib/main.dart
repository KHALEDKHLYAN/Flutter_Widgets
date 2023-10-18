import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter layout demo'),
            backgroundColor: Colors.blue,
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
        
                child: Image.asset(
                  'assets/2g0x.jpg',
                  width: 200,
                  height: 200,
                ),
              
              ),
              Expanded(
                child: Image.asset(
                  'assets/sanaku.jpg',
                  width: 200,
                  height: 200,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'assets/bleach.jpg',
                  width: 200,
                  height: 200,
                ),
              ),
            ],
          )),
    );
  }
}
