import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropFilterWidget extends StatefulWidget {
  const BackdropFilterWidget({super.key});

  @override
  State<BackdropFilterWidget> createState() => _BackdropFilterWidgetState();
}

class _BackdropFilterWidgetState extends State<BackdropFilterWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BackDropFilter"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          //background
          Container(
            color: Colors.red,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),

          //blur effect
          Center(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                height: 250,
                width: 250,
                color: Colors.white.withOpacity(0.2),
              ),
            ),
          ),
          const Center(
            child: Text(
              "blur BackGround",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
