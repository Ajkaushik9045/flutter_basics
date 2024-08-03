import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold provides the structure of the screen
      appBar: AppBar(
        // AppBar displays a material design app bar
        title: const Text("Icon Widget"),
        centerTitle: true, // Centers the title
        backgroundColor: Colors.amber, // Sets the background color of the AppBar
      ),
      body: const Center(
        // Center widget centers its child within itself
        child: Column(
          // Column arranges its children vertically
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Displaying Default Icon"),
            // Icon widget with a default home icon
            Icon(Icons.home),
            SizedBox(height: 20), // SizedBox provides vertical spacing
            Text("Display Icon using some Properties"),
            // Icon widget displaying a home icon with different properties
            Icon(
              Icons.home,
              color: Colors.red, // Sets the color of the icon
              size: 50, // Sets the size of the icon
              semanticLabel: "Home Icon", // Provides a semantic label for accessibility
              shadows: [
                Shadow(
                  blurRadius: 10.0, // Sets the blur radius for the shadow
                  color: Colors.black, // Sets the color of the shadow
                  offset: Offset(2, 3), // Sets the position offset of the shadow
                ),
              ],
              textDirection: TextDirection.ltr, // Sets the text direction for the icon
            ),
          ],
        ),
      ),
    );
  }
}