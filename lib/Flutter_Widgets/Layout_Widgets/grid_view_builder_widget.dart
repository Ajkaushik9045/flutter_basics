import 'package:flutter/material.dart';

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View Builder"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          // Expanded widget allows the GridView to take up the remaining space in the column
          Expanded(
            //here i use the GridView Builder to place item in Grid manner
            child: GridView.builder(
              itemCount: 20, // Total number of items in the grid
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Number of columns in the grid
                mainAxisSpacing: 5, // Vertical spacing between grid items
                crossAxisSpacing: 3, // Horizontal spacing between grid items
              ),
              itemBuilder: (context, index) {
                return Container(
                  // BoxDecoration allows customization of the container's appearance
                  decoration: BoxDecoration(
                    color: Colors.pink[(index % 9 + 1) * 100], // Color based on index
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
