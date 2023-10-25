import 'package:flutter/material.dart';

class CTStatelessClass extends StatelessWidget {
  const CTStatelessClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('CTStatelessClass'),
          backgroundColor: Colors.blueAccent,
        ),
        body: const CTStatefullClass(),
        
      ),
    );
  }
}

class CTStatefullClass extends StatefulWidget {
  const CTStatefullClass({super.key});

  @override
  State<CTStatefullClass> createState() => _CTStatefullClassState();
}

class _CTStatefullClassState extends State<CTStatefullClass> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: const Text('Nike Shoes'),
          trailing: IconButton(
            onPressed: () {
              setState(() => liked = !liked);
            },
            icon: liked
                ? (const Icon(Icons.favorite))
                : (const Icon(Icons.favorite_border_outlined)),
          ),
        )
      ],
    );
  }
}
