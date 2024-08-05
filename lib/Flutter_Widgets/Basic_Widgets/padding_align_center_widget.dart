import 'package:flutter/material.dart';

class PaddingAlignCenterWidget extends StatelessWidget {
  const PaddingAlignCenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Padding , Align , Center"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black26,
            height: 100,
            width: double.infinity,

            //here i wrap the container inside the Padding Widget so and provide some padding it make sepration from inside of the container
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                color: Colors.white,
                child: const Text("This is the use of padding. Padding provided to container"),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.green,

            //here i wrap the child Text inside the Widget Center and now text appears in the center of the container
            child: const Center(
              child: Text(
                  "here i using Center Widget to place Text in the center "),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.amberAccent,

            //here i use the Align widget to Align the content in diffrent part of the Screen As per the need
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                  "Use of align widget to align something in diffrent part of the screen"),
            ),
          ),
        ],
      ),
    );
  }
}
