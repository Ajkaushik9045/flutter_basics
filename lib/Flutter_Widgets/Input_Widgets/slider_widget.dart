import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double age = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider Widget"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            value: age,
            onChanged: (value) {
              setState(() {
                age = value;
              });
            },
            min: 5,
            max: 100,
          ),
          Text(
            "Age is: ${age.toInt()}",
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
