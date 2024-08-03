import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Elevated Button"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the children vertically
          children: [
            const Text(
              "Elevated Button with default properties",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            ElevatedButton(
              // onPressed function is used to perform some action when the button is pressed
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("This is an Elevated Button with Default Properties"),
                  ),
                );
              },
              // Child component visible inside the Button
              child: const Text("Elevated Button"),
            ),
            const SizedBox(height: 20),
            const Text(
              "Elevated Button with custom properties",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            ElevatedButton(
              // onPressed function is used to perform some action when the button is pressed
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("This is an Elevated Button with Custom Properties"),
                  ),
                );
              },
                
              // Style the ElevatedButton using styleFrom
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Background color of Button
                foregroundColor: Colors.white, // Text color
                elevation: 10, // Shadow depth (Provide effect that button is elevated from surface)
                shadowColor: Colors.green, // Color of shadow
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Round corners of Button
                ),
                padding: const EdgeInsets.all(10), // Padding inside the button
              ),
                
              // Child component visible inside the Button
              child: const Text("Elevated Button with custom property"),
            ),
          ],
        ),
      ),
    );
  }
}