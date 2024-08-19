import 'package:flutter/material.dart';

class DropDownButtonWidget extends StatefulWidget {
  const DropDownButtonWidget({super.key});

  @override
  State<DropDownButtonWidget> createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  // Variable to hold the selected value of the dropdown
  String? dropDownValue;

  // List of items to display in the dropdown menu
  var items = ["English", "Hindi", "Math", "Science", "Computer"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Title of the AppBar
        title: const Text("Drop Down Button"),
        // Center the title of the AppBar
        centerTitle: true,
        // Background color of the AppBar
        backgroundColor: Colors.amber,
      ),
      body: Column(
        // Center the content vertically
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            // DropdownButton widget
            child: DropdownButton(
              // The current value of the dropdown
              value: dropDownValue,

              // List of items to display in the dropdown
              items: items
                  .map((e) => DropdownMenuItem(
                        value: e, 
                        child: Text(e)))
                  .toList(),

              // Callback when the user selects a new value
              onChanged: (value) {
                setState(() {
                  dropDownValue = value.toString();
                });
              },

              // Icon displayed on the right side of the dropdown button
              icon: const Icon(Icons.arrow_downward_outlined),
              
              // Size of the dropdown icon
              iconSize: 30,

              // Color of the icon when the dropdown is enabled
              iconEnabledColor: Colors.blue,

              // Color of the icon when the dropdown is disabled
              iconDisabledColor: Colors.red,

              // Background color of the dropdown menu
              dropdownColor: Colors.green[100],

              // Text to display when no item is selected
              hint: const Text("Select Subject"),

              // Text to display when the dropdown is disabled
              disabledHint: const Text("Dropdown Disabled"),

              // Elevation of the dropdown menu, affecting its shadow
              elevation: 8,

              // Text style for the dropdown items
              style: const TextStyle(color: Colors.pink),

              // Underline displayed below the dropdown button
              underline: Container(
                width: 2,
                color: Colors.purple,
              ),

              // Whether the dropdown should expand to fill its parent width
              isExpanded: true,

              // Whether the dropdown button is dense, reducing its height
              isDense: false,

              // Height of each item in the dropdown menu
              itemHeight: 48,
            ),
          ),
        ],
      ),
    );
  }
}
