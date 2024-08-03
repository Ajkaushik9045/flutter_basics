import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // AppBar with title, centered text, and custom background color
        title: const Text('Text Button'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        // Center the child widgets
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the children vertically
          children: [
            const Text("Text Button with default Properties"),
            TextButton(
              // onPressed function is used to perform some action when the button is pressed
              onPressed: () {
                // Display a SnackBar with a message
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("This text button is with default Properties"),
                  ),
                );
              },
              // Child component visible inside the Button
              child: const Text("Text Button"),
            ),
            const SizedBox(
              height: 20, // Space between the two buttons
            ),
            const Text("Text Button With different Properties"),
            TextButton(
              // onPressed function is used to perform some action when the button is pressed
              onPressed: () {
                // Display a SnackBar with a message
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("This Text Button is with different/Custom Properties"),
                  ),
                );
              },
              // Style the TextButton using styleFrom
              style: TextButton.styleFrom(
                backgroundColor: Colors.black, // Background color of Button
                foregroundColor: Colors.red, // Text color
                elevation: 10, // Shadow depth
                maximumSize: const Size(300, 50), // Maximum size of Button
                minimumSize: const Size(50, 10), // Minimum size of Button
                shadowColor: Colors.blue, // Shadow color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5), // Round corners of Button
                ),
              ),
              // Child component visible inside the Button
              child: const Text("Text Button Custom"),
            ),
          ],
        ),
      ),
    );
  }
}
