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
        body: ListView(
          itemExtent: 100.0,
          children: [
            ListTile(
              leading: const Icon(Icons.alarm_rounded),
              title: const Text("Alarms"),
              subtitle: const Text('Weekly Alarms'),
              trailing: const Icon(Icons.add),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.alarm_rounded),
              title: const Text("Alarms"),
              subtitle: const Text('Weekly Alarms'),
              trailing: const Text('4500'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.alarm_rounded),
              title: const Text("Alarms"),
              subtitle: const Text('Weekly Alarms'),
              trailing: const Text('4500'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
