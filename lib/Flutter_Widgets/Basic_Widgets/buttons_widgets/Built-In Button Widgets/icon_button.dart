import 'package:flutter/material.dart';

// A simple widget demonstrating the use of IconButton with various properties
class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // AppBar with a title, centered title text, and amber background color
        title: const Text("IconButton"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        // Center widget to center the IconButton within the body
        child: IconButton(
          // Callback function that is called when the button is pressed
          onPressed: () {},
          // Icon to be displayed within the button
          icon: const Icon(Icons.thumb_up),
          // Color of the icon
          color: Colors.red,
          // Size of the icon
          iconSize: 50,
          // Tooltip message displayed when the button is long-pressed
          tooltip: "Like Share Comments",
          // Color of the icon when a pointer is hovering over it
          hoverColor: Colors.blue,
          // Splash color when the button is pressed
          splashColor: Colors.purple,
          // Color of the icon when the button is disabled
          disabledColor: Colors.grey,
          // Highlight color when the button is pressed
          highlightColor: Colors.orange,
        ),
      ),
    );
  }
}
