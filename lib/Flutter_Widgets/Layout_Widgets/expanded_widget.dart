import 'package:flutter/material.dart';

/// The ExpandedWidget demonstrates the use of the `Expanded` widget in Flutter.
/// The `Expanded` widget is used to make a child of a `Column`, `Row`, or `Flex` fill the available space.
/// It comes with an optional `flex` property that controls the distribution of space among multiple children.

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded Widget"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          // First Expanded widget with default flex value of 1
          Expanded(
            child: Container(
              height: 100, // Height is ignored due to Expanded
              width: double.infinity, // Width takes full available space
              color: Colors.black,
            ),
          ),
          // Second Expanded widget with default flex value of 1
          Expanded(
            child: Container(
              height: 100, // Height is ignored due to Expanded
              width: double.infinity, // Width takes full available space
              color: Colors.orange,
            ),
          ),
          // Third Expanded widget with default flex value of 1
          Expanded(
            child: Container(
              height: 100, // Height is ignored due to Expanded
              width: double.infinity, // Width takes full available space
              color: Colors.red,
            ),
          ),
          // Fourth Expanded widget with a flex value of 3, occupies three times the space compared to others
          Expanded(
            flex: 3, // Occupies more space relative to other Expanded widgets
            child: Container(
              height: 100, // Height is ignored due to Expanded
              width: double.infinity, // Width takes full available space
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
