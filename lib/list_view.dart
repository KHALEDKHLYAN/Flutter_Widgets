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
          children: List.generate(items.length, (index) {
            ListItem item = items[index];

            return ListTile(
              leading: item.icon,
              title: Text(item.title!),
              subtitle: Text(item.subtitle!),
              trailing: Text(item.trailing!),
            );
            
          }),
        ),
      ),
    );
  }
}


class ListItem {
  final Icon? icon;
  final String? title;
  final String? subtitle;
  final String? trailing;
  
  ListItem({this.title, this.icon, this.subtitle, this.trailing});
}

List<ListItem> items = [
  ListItem(
    title: "Alarms",
    subtitle: 'Weekly Alarms',
    trailing: '4500',
    icon: const Icon(Icons.alarm_rounded)
  ),
  ListItem(
    title: "Alarms",
    subtitle: 'Weekly Alarms',
    trailing: '4500',
    icon: const Icon(Icons.alarm_rounded)
  ),
  ListItem(
    title: "Alarms",
    subtitle: 'Weekly Alarms',
    trailing: '4500',
    icon: const Icon(Icons.alarm_rounded)
  ),
];

// generate a list of three ListItem items in this code above?