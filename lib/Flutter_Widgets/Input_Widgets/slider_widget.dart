import 'package:flutter/material.dart';

// The main widget for the Slider, which is a StatefulWidget since its state changes based on user interaction.
class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

// The state class for SliderWidget, where the mutable state of the widget is managed.
class _SliderWidgetState extends State<SliderWidget> {
  // Variable to hold the current value of the slider, initialized to 10.
  double age = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold provides a structure to the app screen with an AppBar and a body.
      appBar: AppBar(
        // The title of the AppBar.
        title: const Text("Slider Widget"),
        // Centers the title in the AppBar.
        centerTitle: true,
        // Sets the background color of the AppBar to amber.
        backgroundColor: Colors.amber,
      ),
      // The body of the Scaffold contains a Column to layout its children vertically.
      body: Column(
        // Center the children of the column vertically.
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // The Slider widget that allows users to select a value from a range.
          Slider(
            // The label to show above the slider thumb, showing the current value.
            label: '${age.toInt()}',
            // The current value of the slider.
            value: age,
            // The color of the active part of the slider (left of the thumb).
            activeColor: Colors.red,
            // The color of the inactive part of the slider (right of the thumb).
            inactiveColor: Colors.blue,
            // The color of the slider's thumb.
            thumbColor: Colors.amber,
            // The color of the overlay that appears around the thumb when it's pressed.
            overlayColor: const WidgetStatePropertyAll(Colors.black),
            // Callback for when the user starts interacting with the slider.
            onChangeStart: (value) {
              print('Started change at $value');
            },
            // Callback for when the user stops interacting with the slider.
            onChangeEnd: (value) {
              print('Ended change at $value');
            },
            // Callback for when the slider value changes.
            onChanged: (value) {
              setState(() {
                // Update the state with the new value.
                age = value;
              });
            },
            // The number of discrete divisions for the slider, making it a stepped slider.
            divisions: 10,
            // The minimum value of the slider.
            min: 5,
            // The maximum value of the slider.
            max: 100,
          ),
          // Text widget that displays the current value of the slider as an integer.
          Text(
            "Age is: ${age.toInt()}",
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
