import 'package:flutter/material.dart';

class OutlinedButtonWidget extends StatelessWidget {
  const OutlinedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Outlined Button"),
          centerTitle: true,
          backgroundColor: Colors.amber),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("outlined Buttons With default propertes"),
            //Default outlined Button
            OutlinedButton(
              child: const Text(
                "Outlined Button",
                style: TextStyle(fontSize: 10),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("default Ouotlined Button"),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "This is Outlined Button with Custom Properties",
            ),
            // Customised outlined Button 
            OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                        "This is Outlined Button with diffrent/ customproperties",
                        style: TextStyle(fontSize: 10)),
                  ),
                );
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.black,
                side: const BorderSide(color: Colors.black, width: 2),
                minimumSize: const Size(100, 40),
                maximumSize: const Size(300, 60),
              ),
              child: const Text("Custom Outlined Button"),
            )
          ],
        ),
      ),
    );
  }
}
