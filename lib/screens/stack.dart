import 'package:flutter/material.dart';

class StackWIdget extends StatelessWidget {
  const StackWIdget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text(
            "Stack Widget",
            style: TextStyle(fontSize: 24.9, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.black38,
        ),
        backgroundColor: Colors.grey.shade800,
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            constraints: const BoxConstraints.expand(
              width: 330,
              height: 450,
            ),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0, 2),
                  spreadRadius: 5,
                  blurRadius: 10,
                ),
              ],
              image: DecorationImage(
                image: AssetImage('assets/2g0x.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            //CHILD STACK WIDGET
            child: const Stack(
              children: [
                Text(
                  'Best ANIME COVER BLEACH',
                  style: TextStyle(color: Colors.pink, fontSize: 24),
                ),
                Positioned(
                  top: 20.0,
                  child: Text(
                    'RUKIA GATAMI ',
                    style: TextStyle(color: Colors.pink, fontSize: 22),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 20,
                  child: Text(
                    'BLEACH THE MOST WILD ANIME',
                    style: TextStyle(color: Colors.pink, fontSize: 26,
                  ),
                  
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Text(
                    'Best ANIME COVER BLEACH',
                    style: TextStyle(color: Colors.pink, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
