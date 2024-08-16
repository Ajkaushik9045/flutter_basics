import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  // This variable holds the state of the switch (on/off).
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch Widget"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Switch(
              // The current state of the switch
              value: isSwitch,
              // Callback when the switch is toggled
              onChanged: (value) {
                setState(() {
                  isSwitch = value; // Update the state
                });
              },
              // Color of the switch when it's active (ON)
              activeColor: Colors.brown,
              // Color of the switch when hovered (useful for desktop/web)
              hoverColor: Colors.blue,
              // Color of the thumb (the circular part of the switch)
              thumbColor: const WidgetStatePropertyAll(Colors.yellow),
              // Color of the track (background of the switch)
              trackColor: const WidgetStatePropertyAll(Colors.green),
              // Color of the thumb when the switch is inactive (OFF)
              inactiveThumbColor: Colors.red,
              // How drag gestures should be handled
              dragStartBehavior: DragStartBehavior.down,
              // Minimum size for the touch target (useful for accessibility)
              materialTapTargetSize: MaterialTapTargetSize.padded,
              // Color of the thumb image when the switch is active (optional)
              activeThumbImage: const AssetImage('assets/images/active_thumb.png'),
              // Color of the thumb image when the switch is inactive (optional)
              inactiveThumbImage: const AssetImage('assets/images/inactive_thumb.png'),
            ),
          ),
          // Text widget to display the current state of the switch
          Text(
            isSwitch ? "Switch is On" : "Switch is Off",
            style: TextStyle(
                fontSize: 20, color: isSwitch ? Colors.green : Colors.red),
          ),
        ],
      ),
    );
  }
}
