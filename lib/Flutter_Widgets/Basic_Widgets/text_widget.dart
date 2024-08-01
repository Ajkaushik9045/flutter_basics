import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({super.key});

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Widget"),
      ),
      body: const Center(
        child: Text(
          "These is all about the Text widget and the properties associated with it", // Displayed text
          style: TextStyle(
            fontSize: 20.0, // Adjusts the size of the text
            color: Colors.red, // Changes the color of the text
            fontWeight: FontWeight.bold, // Sets the thickness of the text
            letterSpacing: 5.0, // Adds spacing between letters
            wordSpacing: 5.0, // Adds spacing between words
            backgroundColor: Colors.yellow, // Background color of the text
            decoration: TextDecoration.underline, // Underlines the text
            decorationColor: Colors.blue, // Color of the underline
            decorationStyle: TextDecorationStyle.dotted, // Style of the underline
            fontStyle: FontStyle.italic, // Makes the text italic
            shadows: [
              Shadow(
                color: Colors.black, // Color of the shadow
                offset: Offset(2, 2), // Position of the shadow
                blurRadius: 2, // Blurriness of the shadow
              ),
            ],
            // Note: Other properties can include height for line height adjustment, etc.
          ),
          textAlign: TextAlign.center, // Aligns text to the center horizontally
          locale: Locale('en', 'US'), // Sets the locale for the text
          softWrap: true, // Allows text to wrap to the next line at soft breaks
          textDirection: TextDirection.ltr, // Left-to-right text direction
          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: true), // Controls height behavior
          semanticsLabel: 'hello', // Provides a label for accessibility tools
          overflow: TextOverflow.ellipsis, // Adds ellipsis if text overflows
          maxLines: 2, // Limits the text to 2 lines
          textWidthBasis: TextWidthBasis.longestLine, // Uses the longest line for width calculation
        ),
      ),
    );
  }
}
