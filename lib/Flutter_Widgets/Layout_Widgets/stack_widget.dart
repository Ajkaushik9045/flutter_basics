import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // AppBar with title, centered text, and custom background color
        title: const Text("Stack Widget"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        // Center widget to center the Stack in the middle of the screen
        child: Stack(
          // Stack widget allows overlaying of widgets
          alignment: Alignment.center, // Aligns all children to the center
          children: [
            Container(
              // Base container (bottom-most in the stack)
              color: Colors.red,
              height: 400,
              width: 300,
            ),
            Container(
              // Overlay container
              color: Colors.black,
              height: 300,
              width: 200,
            ),
            Container(
              // Another overlay container
              color: Colors.green,
              height: 200,
              width: 150,
            ),
            Container(
              // Topmost container (apart from the text)
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
            // Text widget displayed on top of the stack
            const Text(
              "Stacked Text",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
