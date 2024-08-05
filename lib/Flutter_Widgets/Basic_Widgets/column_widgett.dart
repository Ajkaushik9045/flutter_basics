import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // AppBar with title, centered text, and custom background color
        title: const Text("Column Widget"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Container(
        // Container with a red background color
        color: Colors.red,
        // Column with custom properties
        child: const Column(
          // Distributes space evenly between children
          mainAxisAlignment: MainAxisAlignment.spaceBetween,// we can we diffrent propeties as per our needs
          // Stretches children to fill the cross axis
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // Sets the main axis size to the minimum required
          mainAxisSize: MainAxisSize.min,

          children: [
            // A list of Icon widgets
            Icon(Icons.star, color: Colors.red),
            Icon(Icons.star, color: Colors.green),
            Icon(Icons.star, color: Colors.blue),
            Icon(Icons.star, color: Colors.black),
            Icon(Icons.star, color: Colors.yellow),
          ],
        ),
      ),
    );
  }
}
