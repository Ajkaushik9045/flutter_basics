import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool? maleValues = false;  // Stores the state of the male checkbox
  bool? femaleValues = false;  // Stores the state of the female checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CheckBox Widget"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Male"),
              Checkbox(
                // The color of the check icon inside the checkbox when selected
                checkColor: Colors.blue,

                // The color of the checkbox when it has focus
                focusColor: Colors.yellow,

                // The color of the checkbox when it is hovered over
                hoverColor: Colors.red,

                // Defines the type of cursor that appears when hovering over the checkbox
                mouseCursor: SystemMouseCursors.click,

                // Sets the size of the checkbox's tap target
                materialTapTargetSize: MaterialTapTargetSize.padded,

                // The value that determines whether the checkbox is checked
                value: maleValues,

                // The callback function that updates the checkbox state
                onChanged: (bool? value) {
                  setState(() {
                    maleValues = value;  // Update the state when the checkbox is toggled
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Female"),
              Checkbox(
                // The color of the check icon inside the checkbox when selected
                checkColor: Colors.pink,

                // The color of the checkbox when it has focus
                focusColor: Colors.pink,

                // The value that determines whether the checkbox is checked
                value: femaleValues,

                // The callback function that updates the checkbox state
                onChanged: (bool? value) {
                  setState(() {
                    femaleValues = value;  // Update the state when the checkbox is toggled
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
