import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // AppBar with title, centered text, and custom background color
        title: const Text('Row Widget'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: const Center(
        // Center the child widgets
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the children vertically
          children: [
            Text("Row with default properties"),
            Row(
              // Row with default properties
              children: [
                Icon(Icons.star, color: Colors.red),
                Icon(Icons.star, color: Colors.green),
                Icon(Icons.star, color: Colors.blue),
              ],
            ),
            SizedBox(
              height: 20, // Space between the rows
            ),
            Text("Row with mainAxisAlignment and crossAxisAlignment"),
            Row(
              // Row with custom mainAxisAlignment and crossAxisAlignment
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distributes space evenly between children
              crossAxisAlignment: CrossAxisAlignment.start, // Aligns children at the start of the cross axis
              children: [
                Icon(Icons.star, color: Colors.red, size: 50),
                Icon(Icons.star, color: Colors.green, size: 50),
                Icon(Icons.star, color: Colors.blue, size: 50),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
