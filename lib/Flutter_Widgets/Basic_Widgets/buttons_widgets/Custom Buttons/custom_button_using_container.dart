import 'package:flutter/material.dart';

// In this example, we created a button-shaped Container and used GestureDetector and InkWell to handle the action when the user taps on it.
class CustomButtonUsingContainer extends StatelessWidget {
  const CustomButtonUsingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // AppBar with a title and centered title text
        title: const Text("Custom button"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        // Center widget to center the child widget
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            // Creating Button with the use of Container and GestureDetector
            GestureDetector(
              // GestureDetector to detect tap events
            
              onTap: () {
                // Show a SnackBar when the button is tapped
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      "This is the button created using the Container and GestureDetector",
                    ),
                  ),
                );
              },
              child: Container(
                // Container to style the button
                height: 50, // Set the height of the button
                width: 200, // Set the width of the button
                alignment:
                    Alignment.center, // Center the text within the button
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
                child: const Text("Gesture Detector Button"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            
            // Creating Button with the use of Container and InkWell
            InkWell(
            
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                        "This is the button created using Container and InkWell"),
                  ),
                );
              },
              child: Container(
                // Container to style the button
                height: 50, // Set the height of the button
                width: 200, // Set the width of the button
                alignment:
                    Alignment.center, // Center the text within the button
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
                child: const Text("InkWell Button"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
