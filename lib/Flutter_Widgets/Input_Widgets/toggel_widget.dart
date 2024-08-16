import 'package:flutter/material.dart';

class ToggleButtonWidget extends StatefulWidget {
  const ToggleButtonWidget({super.key});

  @override
  State<ToggleButtonWidget> createState() => _ToggleButtonWidgetState();
}

class _ToggleButtonWidgetState extends State<ToggleButtonWidget> {
  // List to keep track of the selected buttons
  List<bool> isSelected = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Button Widget"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ToggleButtons(
              isSelected: isSelected,
              onPressed: (int index) {
                setState(() {
                  isSelected[index] = !isSelected[index]; // Toggle the button state
                });
              },
              color: Colors.black, // Color for the unselected buttons' text/icon
              selectedColor: Colors.white, // Color for the selected buttons' text/icon
              fillColor: Colors.blue, // Background color for the selected buttons
              borderColor: Colors.grey, // Border color for the buttons
              selectedBorderColor: Colors.green, // Border color when selected
              borderRadius: BorderRadius.circular(10), // Rounded corners for the buttons
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text("Option 1"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text("Option 2"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text("Option 3"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "Selected: ${getSelectedOptions()}",
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to get a string representation of the selected options
  String getSelectedOptions() {
    List<String> selectedOptions = [];
    if (isSelected[0]) selectedOptions.add("Option 1");
    if (isSelected[1]) selectedOptions.add("Option 2");
    if (isSelected[2]) selectedOptions.add("Option 3");

    return selectedOptions.isNotEmpty ? selectedOptions.join(', ') : "None";
  }
}
