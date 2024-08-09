import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible Widget"),
        centerTitle: true, // Centers the title in the AppBar
        backgroundColor:
            Colors.amber, // Sets the background color of the AppBar
      ),
      body: Column(
        children: [
          // First Flexible widget
          Flexible(
            fit: FlexFit.tight, // Forces the child to fill all available space.
            flex:
                2, // Flex value determines the proportion of space this widget takes
            child: Container(
              color: Colors
                  .black, // Sets the background color of the container to black
            ),
          ),
          // Second Flexible widget
          Flexible(
            // Default flex value is 1
            child: Container(
              color: Colors
                  .red, // Sets the background color of the container to red
            ),
          ),
          // Third Flexible widget
          Flexible(
            // Default flex value is 1
            child: Container(
              color: Colors
                  .yellow, // Sets the background color of the container to yellow
            ),
          ),
          // Fourth Flexible widget
          Flexible(
            flex:
                6, // This widget takes up 6 times the space compared to the other Flexible widgets
            child: Container(
              color: Colors
                  .blue, // Sets the background color of the container to blue
            ),
          ),
        ],
      ),
    );
  }
}
