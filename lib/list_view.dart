import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListView',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView'),
          backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(title: Text("Item 1")),
          ],
        ),
      ),
      ),
      
      )
      ;
  }
}