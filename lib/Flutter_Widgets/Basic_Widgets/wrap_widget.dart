import 'package:flutter/material.dart';

class WrapWidget extends StatefulWidget {
  const WrapWidget({super.key});

  @override
  State<WrapWidget> createState() => _WrapWidgetState();
}

Container containerGenerator() {
  return Container(
    height: 40,
    width: 40,
    color: Colors.red,
  );
}

class _WrapWidgetState extends State<WrapWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // This is the AppBar
      appBar: AppBar(
        title: const Text("Wrap Widget"),
        centerTitle: true,
      ),

      // This is the body where we use the Container
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          height: 300,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.2),
            border: Border.all(width: 2, color: Colors.black),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        
          // Here we use the Wrap Widget inside the Container
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              // Direction in which to display the children (horizontal or vertical)
              direction: Axis.vertical,
                    
              // Spacing between the children along the main axis
              spacing: 10.0,
                    
              // Run spacing between the children along the cross axis
              runSpacing: 20.0,
                    
              // Alignment of children within the main axis
              alignment: WrapAlignment.center,
                    
              // Alignment of the runs (rows or columns) within the wrap
              runAlignment: WrapAlignment.center,
                    
              // Vertical direction of the wrap (affects vertical layouts)
              verticalDirection: VerticalDirection.down,
                    
              // Text direction of the children (left-to-right or right-to-left)
              textDirection: TextDirection.ltr,
                    
              children: [
                // Generating multiple containers using a loop
                for (var i = 0; i <= 30; i++) containerGenerator(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
