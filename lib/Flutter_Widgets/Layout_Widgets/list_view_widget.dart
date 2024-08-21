import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Widget"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,  // Sets the direction to vertical
              padding: const EdgeInsets.all(8),  // Adds padding around the ListView
              itemExtent: 150.0,  // Sets a fixed extent for each item
              reverse: false,  // Controls the order of items
              shrinkWrap: false,  // Controls whether the ListView shrinks to fit its children
              physics:const BouncingScrollPhysics(),  // Sets the scroll behavior
              children: [
                //All the item Inside the list present here
                Container(
                  color: Colors.blue,
                  height: 200,
                  width: 200,
                ),
                Container(
                  color: Colors.amber,
                  height: 200,
                  width: 200,
                ),
                Container(
                  color: Colors.red,
                  height: 200,
                  width: 200,
                ),
                Container(
                  color: Colors.yellow,
                  height: 200,
                  width: 200,
                ),
                Container(
                  color: Colors.green,
                  height: 200,
                  width: 200,
                ),
                Container(
                  color: Colors.grey,
                  height: 200,
                  width: 200,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
