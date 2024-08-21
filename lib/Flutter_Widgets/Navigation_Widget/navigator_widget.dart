import 'package:flutter/material.dart';

// The main widget that shows the first screen with a button to navigate to the second page
class NavigatorWidget extends StatelessWidget {
  const NavigatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title of the AppBar
        title: const Text("Navigator Widget"),
        // Centers the title in the AppBar
        centerTitle: true,
        // Sets the background color of the AppBar
        backgroundColor: Colors.amber,
      ),
      body: Container(
        // The container takes the full height of the screen
        height: double.infinity,
        // The container takes the full width of the screen
        width: double.infinity,
        // Sets the background color of the container
        color: Colors.red[100],
        child: Column(
          // Centers the children vertically in the column
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Center widget to center the button horizontally
            Center(
              child: ElevatedButton(
                // This function is called when the button is pressed
                onPressed: () {
                  // Navigates to the SecondPage using the Navigator
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondPage(),
                    ),
                  );
                },
                // The label of the button
                child: const Text("Go to Second Page"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// The second page that is navigated to from the first page
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // The container takes the full height of the screen
        height: double.infinity,
        // The container takes the full width of the screen
        width: double.infinity,
        // Sets the background color of the container
        color: Colors.blue[200],
        child: Column(
          // Centers the children vertically in the column
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Center widget to center the button horizontally
            Center(
              child: ElevatedButton(
                // This function is called when the button is pressed
                onPressed: () {
                  // Pops the current route off the navigator stack
                  Navigator.pop(context);
                },
                // The label of the button
                child: const Text("Go to Home Page"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
