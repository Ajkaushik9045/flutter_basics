// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_basics/Flutter_Widgets/Basic_Widgets/buttons_widgets/Built-In%20Button%20Widgets/elevated_button_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Basic_Widgets/buttons_widgets/Built-In%20Button%20Widgets/outlined_button_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Basic_Widgets/buttons_widgets/Built-In%20Button%20Widgets/text_button_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Basic_Widgets/buttons_widgets/Custom%20Buttons/custom_button_using_container.dart';
import 'package:flutter_basics/Flutter_Widgets/Basic_Widgets/icon_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Basic_Widgets/image_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/Basic_Widgets/text_widget.dart';
import 'package:flutter_basics/Flutter_Widgets/wrap_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OutlinedButtonWidget(),
    );
  }
}
