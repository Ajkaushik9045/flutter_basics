import 'package:flutter/material.dart';
import 'package:flutter_basics/Flutter_UI/containers_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContainersWidget(),
    );
  }
}
