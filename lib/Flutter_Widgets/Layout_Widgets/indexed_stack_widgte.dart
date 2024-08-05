import 'package:flutter/material.dart';

class IndexedStackWidgte extends StatefulWidget {
  const IndexedStackWidgte({super.key});

  @override
  State<IndexedStackWidgte> createState() => _IndexedStackWidgteState();
}

class _IndexedStackWidgteState extends State<IndexedStackWidgte> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Indexed Stack Widget"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: IndexedStack(
                index: currentIndex,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.blue,
                    child: const Center(
                      child: Text("Conatiner 1st"),
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    width: 200,
                    height: 200,
                    child: const Center(
                      child: Text("Conatiner 2nd"),
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    width: 200,
                    height: 200,
                    child: const Center(
                      child: Text("Conatiner 3rd"),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    width: 200,
                    height: 200,
                    child: const Center(
                      child: Text("Conatainer 4th"),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                  child: const Text("Button 1"),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                  child: const Text("Button 2"),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 2;
                    });
                  },
                  child: const Text("Button 3"),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 3;
                    });
                  },
                  child: const Text("Button 4"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
