import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        // Using gridView to place item in grid 
        child: GridView(
             // GridDelegate controls the layout of the grid
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            mainAxisSpacing: 10, // Vertical spacing between grid items
            crossAxisSpacing: 5, // Horizontal spacing between grid items
          ),
          children: [
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
