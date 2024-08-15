import 'package:flutter/material.dart';

class CheckBoxListTileWidget extends StatefulWidget {
  const CheckBoxListTileWidget({super.key});

  @override
  State<CheckBoxListTileWidget> createState() => _CheckBoxListTileState();
}

class _CheckBoxListTileState extends State<CheckBoxListTileWidget> {
  bool? eng = false; // Tracks the state of the English checkbox.
  bool? hindi = false; // Tracks the state of the Hindi checkbox.
  bool? cse = false; // Tracks the state of the Computer Science checkbox.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CheckBox List Tiles"),
        centerTitle: true, // Centers the title of the AppBar.
        backgroundColor:
            Colors.amber, // Sets the background color of the AppBar.
      ),
      body: Column(
        children: [
          // CheckboxListTile for "English"
          CheckboxListTile(
            title: const Text(
              "English",
              style: TextStyle(fontSize: 20),
            ), // Main label for the checkbox.
            subtitle: const Text("Sem 1st"), // Additional text below the title.
            tileColor: Colors.pink[300], // Background color of the tile.
            overlayColor: const WidgetStatePropertyAll(Colors.white), // Overlay color when pressed focused.
            hoverColor: Colors.blue, // Color when the tile is hovered over.
            checkColor: Colors.purple, // Color of the check mark.
            selected:eng ??false, // Whether the tile is selected (does not change the state).
            autofocus:false, // If true, this widget will be focused on startup.
            selectedTileColor: Colors.amber, // Background color of the tile when selected.
            controlAffinity: ListTileControlAffinity.leading, // Checkbox position (leading or trailing).
            secondary: const Icon(Icons .subject), // Icon displayed on the opposite side of the checkbox.
            activeColor: Colors.green, // Color when the checkbox is checked.
            dense: true, // Reduces the height of the tile if true.
            value: eng, // The current state of the checkbox.
            onChanged: (bool? value) {
              setState(() {
                eng = value; // Updates the state when the checkbox is toggled.
              });
            },
            isThreeLine: false, // If true, allows for an extra line of text.
            contentPadding: const EdgeInsets.all(8.0), // Padding inside the tile.
            shape: RoundedRectangleBorder(
              // Custom shape for the tile.
              borderRadius: BorderRadius.circular(10),
            ),
            tristate: false, // If true, the checkbox can be in an indeterminate state.
            visualDensity: VisualDensity.compact, // Adjusts the visual density of the tile.
          ),

          // CheckboxListTile for "Hindi"
          CheckboxListTile(
            title: const Text("Hindi"),
            tileColor: Colors.red[100],
            value: hindi,
            onChanged: (value) {
              setState(() {
                hindi =
                    value; // Updates the state when the checkbox is toggled.
              });
            },
            controlAffinity: ListTileControlAffinity
                .trailing, // Moves checkbox to the trailing edge.
            activeColor: Colors.blue, // Sets active color for this checkbox.
            dense: true, // Makes the tile more compact.
            selected: hindi ?? false, // Highlights tile if selected.
          ),

          // CheckboxListTile for "Computer"
          CheckboxListTile(
            title: const Text("Computer"),
            tileColor: Colors.blue[100],
            value: cse,
            onChanged: (value) {
              setState(() {
                cse = value; // Updates the state when the checkbox is toggled.
              });
            },
            controlAffinity: ListTileControlAffinity
                .leading, // Keeps checkbox at the leading edge.
            activeColor: Colors.orange, // Sets active color for this checkbox.
            dense: false, // Tile will take up more vertical space.
            selected: cse ?? false, // Highlights tile if selected.
          ),
        ],
      ),
    );
  }
}
