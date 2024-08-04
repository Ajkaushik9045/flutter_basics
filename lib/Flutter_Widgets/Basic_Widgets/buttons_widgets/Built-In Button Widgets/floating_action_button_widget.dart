import 'package:flutter/material.dart';

// A simple widget demonstrating the use of FloatingActionButton with various properties
class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // AppBar with a title, centered title text, and an amber background color
        title: const Text("Floating Action Button"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        // Center widget to center the FloatingActionButton within the body
        child: FloatingActionButton(
          // Callback function that is called when the button is pressed
          onPressed: () {},
          // Elevation of the button when it's in its default state
          elevation: 5,
          // Tooltip message displayed when the button is long-pressed
          tooltip: "Floating Action Button",
          // Elevation of the button when it's pressed
          highlightElevation: 12,
          // Background color of the button
          backgroundColor: Colors.red,
          // Color of the button when it is focused
          focusColor: Colors.black,
          // Shape of the button with rounded rectangle and corner radius of 10
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          // Icon to be displayed within the button
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
