import 'package:flutter/material.dart';
// import 'package:widgets_app_design/screens/simple_page.dart';
// import 'package:widgets_app_design/screens/navigation.dart';
// import 'package:widgets_app_design/screens/simpledetail.dart';
// import 'package:widgets_app_design/screens/simple_page.dart';
// import 'package:widgets_app_design/screens/code_reusing.dart';
// import 'package:widgets_app_design/widgets/stlss_stful.dart';
// import 'package:widgets_app_design/listview_builder.dart';
import './floating_button.dart';
// import 'package:widgets_app_design/screens/stack.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const FloatingButton(),
    );
  }
}
