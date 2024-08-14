import 'package:flutter/material.dart';

class RadioListTiles extends StatefulWidget {
  const RadioListTiles({super.key});

  @override
  State<RadioListTiles> createState() => _RadioListTilesState();
}

class _RadioListTilesState extends State<RadioListTiles> {
  String _selectedValue = "Male"; // Holds the currently selected value.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio List Tiles"),
        centerTitle: true,
        backgroundColor: Colors.amber, // Sets the background color of the AppBar.
      ),
      body: Column(
        children: [
          // First RadioListTile for "Male"
          RadioListTile(
            title: const Text("Male"), // Main label text.
            subtitle: const Text("Gender 1"), // Additional text below the title.
            secondary: const Icon(Icons.male), // Icon displayed on the trailing edge.
            tileColor: Colors.purple.shade300, // Background color of the tile.
            value: "Male", // The value associated with this tile.
            groupValue: _selectedValue, // The value of the selected tile in the group.
            onChanged: (value) {
              setState(() {
                _selectedValue = value.toString(); // Update the selected value.
              });
            },
            dense: false, // If true, reduces the height of the tile.
            activeColor: Colors.red, // Color when the radio is selected.
            hoverColor: Colors.blue, // Color when the tile is hovered.
            selected: _selectedValue == "Male", // If true, the tile will be styled as selected.
            controlAffinity: ListTileControlAffinity.leading, // Positions the radio button on the leading edge.
            autofocus: false, // If true, this widget will be selected on startup.
            contentPadding: const EdgeInsets.all(8), // Padding around the content inside the tile
            visualDensity: VisualDensity.compact, // Adjusts the visual density of the tile.
          ),
          
          // Second RadioListTile for "Female"
          RadioListTile(
            title: const Text("Female"),
            subtitle: const Text("Gender 2"),
            secondary: const Icon(Icons.female),
            tileColor: Colors.purple.shade100,
            value: "Female",
            groupValue: _selectedValue,
            onChanged: (value) {
              setState(() {
                _selectedValue = value.toString();
              });
            },
            dense: true, // Makes the tile more compact.
            activeColor: Colors.red,
            hoverColor: Colors.blue,
            selected: _selectedValue == "Female",
            controlAffinity: ListTileControlAffinity.trailing, // Places the radio button on the trailing edge.
            autofocus: false,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0), // Padding specific to horizontal edges.
           
            visualDensity: VisualDensity.standard, // Standard visual density.
          ),
          
          // Third RadioListTile for "Other"
          RadioListTile(
            title: const Text("Other"),
            subtitle: const Text("Not defined"),
            secondary: const Icon(Icons.transgender),
            tileColor: Colors.purple.shade300,
            value: "Other",
            groupValue: _selectedValue,
            onChanged: (value) {
              setState(() {
                _selectedValue = value.toString();
              });
            },
            dense: false,
            activeColor: Colors.red,
            hoverColor: Colors.blue,
            selected: _selectedValue == "Other",
            controlAffinity: ListTileControlAffinity.leading,
            autofocus: false,
            contentPadding: const EdgeInsets.all(8),
          
            visualDensity: VisualDensity.compact,
          ),
        ],
      ),
    );
  }
}
