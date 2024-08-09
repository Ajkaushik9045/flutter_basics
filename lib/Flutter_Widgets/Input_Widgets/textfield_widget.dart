import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField Widget"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          // Default TextField without any additional properties
          const Text(
            "TextField with default properties",
            style: TextStyle(fontSize: 20),
          ),
          const TextField(), // Basic TextField
          const SizedBox(
            height: 40,
          ),
          
          // TextField with various custom properties
          const Text("Textfield with Different Properties",
              style: TextStyle(fontSize: 20)),
          const SizedBox(
            height: 10,
          ),
          
          // Customized TextField with specific properties
          TextField(
            keyboardType: TextInputType.text, // Specifies the type of keyboard to use
            obscureText: false, // Determines if the text is obscured (e.g., for passwords)
            
            decoration: InputDecoration(
              labelText: " Username", // Label for the TextField
              floatingLabelBehavior: FloatingLabelBehavior.always, // Ensures label stays at the top
              hintText: "Enter your name", // Placeholder text inside the TextField
              
              // Border when the TextField is not focused
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              
              // Border when the TextField is enabled but not focused
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                borderRadius: BorderRadius.circular(10),
              ),
              
              // Border when the TextField is focused
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.green, width: 2.0),
                borderRadius: BorderRadius.circular(10),
              ),
              
              // Icon displayed at the start of the TextField
              prefixIcon: const Icon(Icons.person, color: Colors.black),
              
              // Icon displayed at the end of the TextField
              suffixIcon: const Icon(Icons.close, color: Colors.red),
            ),
            
            textAlign: TextAlign.left, // Aligns the text to the left
            maxLines: 1, // Sets the maximum number of lines the TextField can have
            minLines: 1, // Sets the minimum number of lines the TextField can have
            
            style: const TextStyle(
              fontSize: 20, // Sets the font size of the input text
              color: Colors.blue, // Sets the color of the input text
            ),
            
            autocorrect: true, // Enables or disables auto-correction
            autofocus: false, // Determines whether the TextField is automatically focused
            enabled: true, // Determines if the TextField is enabled or disabled
            textInputAction: TextInputAction.next, // Specifies the action button to be displayed on the keyboard
          ),
        ],
      ),
    );
  }
}
