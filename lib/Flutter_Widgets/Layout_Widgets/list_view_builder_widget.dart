import 'package:flutter/material.dart';

class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/lion.jpeg",
      "assets/lion.jpeg",
      "assets/lion.jpeg",
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View BUilder"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  width: 200,
                  color: Colors.grey,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: Image.asset(
                    images[index],
                  ),
                );
              },
              itemCount: images.length,
            ),
          ),
        ],
      ),
    );
  }
}
