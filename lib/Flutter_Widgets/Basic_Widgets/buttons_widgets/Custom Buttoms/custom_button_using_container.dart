import 'package:flutter/material.dart';

// In this Example we created a Button Shapped Conatiner and used Gesture Detector to handel the action when user tap on it
class CustomButtonUsingContainer extends StatelessWidget {
  const CustomButtonUsingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // AppBar with a title and centered title text
        title: const Text("Custom button "),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        // Center widget to center the child widget
        child: GestureDetector(
          // GestureDetector to detect tap events
          onTap: () {
            // Show a SnackBar when the button is tapped
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  "This is the button created using the Container and Gesturedetector",
                ),
              ),
            );
          },
          child: Container(
            // Container to style the button
            height: 30, // Set the height of the button
            width: 200, // Set the width of the button
            alignment: Alignment.center, // Center the text within the button
            decoration: BoxDecoration(
              // BoxDecoration to add styling
              color: Colors.amber, // Background color of the button
              border: Border.all(
                width: 2, // Border width
                color: Colors.black, // Border color
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(10), // Rounded corners with a radius of 10
              ),
            ),
            // Text widget to display the button label
            child: const Text("Button using container"),
          ),
        ),
      ),
    );
  }
}
