import 'package:flutter/material.dart';
import 'package:widgets_app_design/widgets/listview.dart';

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
        body: ListView(
          children: [
            ListTileWidget(
              title: 'Mouse',
              subTitle: 'A4Tech Mouse',
              leadingIcon: Icons.mouse,
              listTileColor: Colors.black26,
            ),
            ListTileWidget(
              title: 'Laptop',
              subTitle: 'best3D Laptop',
              leadingIcon: Icons.laptop_mac,
              listTileColor: Colors.black38,
            ),
          ],
        ),
      ),
    );
  }
}
