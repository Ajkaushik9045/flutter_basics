import 'package:flutter/material.dart';

// This is the main widget that will be run when the app starts.
class RadioWidget extends StatefulWidget {
  const RadioWidget({super.key});

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

// The state class for the RadioWidget, holding the state for the selected radio button.
class _RadioWidgetState extends State<RadioWidget> {
  // Variable to store the currently selected value for the radio buttons.
  int _selectedValue = 1;
  
  // A string variable (not currently used in this code).
  String select = "verify";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Widget"), // The title of the app bar.
        centerTitle: true, // Centers the title in the app bar.
        backgroundColor: Colors.amber, // Sets the background color of the app bar.
      ),
      body: Align(
        alignment: Alignment.center, // Aligns the child to the center of the screen.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centers the column vertically.
          crossAxisAlignment: CrossAxisAlignment.center, // Centers the column horizontally.
          children: [
            const Text("Radio Button"), // Displays a simple text widget above the radio buttons.

            // First Radio button
            Radio(
              value: 1, // The value that this radio button represents.
              groupValue: _selectedValue, // The value of the currently selected radio button.
              onChanged: (value) {
                // Callback function when the radio button is selected.
                setState(() {
                  _selectedValue = value!; // Update the selected value in the state.
                });
              },
              toggleable: false, // If true, allows the radio button to be unselected.
              mouseCursor: MouseCursor.defer, // Sets the type of mouse cursor when hovering.
              activeColor: Colors.red, // Color of the radio button when it is selected.
              hoverColor: Colors.green, // Color of the radio button when it is hovered over.
              focusColor: Colors.orange, // Color of the radio button when it is focused.
            ),

            // Second Radio button
            Radio(
              value: 2, // The value that this radio button represents.
              groupValue: _selectedValue, // The value of the currently selected radio button.
              onChanged: (value) {
                // Callback function when the radio button is selected.
                setState(() {
                  _selectedValue = value!; // Update the selected value in the state.
                });
              },
              toggleable: false, // If true, allows the radio button to be unselected.
              mouseCursor: MouseCursor.uncontrolled, // Sets the type of mouse cursor when hovering.
              activeColor: Colors.blue, // Color of the radio button when it is selected.
              hoverColor: Colors.green, // Color of the radio button when it is hovered over.
              focusColor: Colors.orange, // Color of the radio button when it is focused.
            ),
          ],
        ),
      ),
    );
  }
}
