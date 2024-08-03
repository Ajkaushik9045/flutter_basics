import 'package:flutter/material.dart';

class ContainersWidget extends StatefulWidget {
  const ContainersWidget({super.key});

  @override
  State<ContainersWidget> createState() => _ContainersWidgetState();
}

class _ContainersWidgetState extends State<ContainersWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        centerTitle: true,
        title: const Text(
          "Container Widget Properties",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        // Margin creates separation from other elements
        margin: const EdgeInsets.all(20),
      
        // Padding creates space inside the container
        padding: const EdgeInsets.all(10),
      
        // BoxConstraints help to control the box's max and min height and width
        // Example:
        constraints: const BoxConstraints(
          maxHeight: 100,
          minHeight: 50,
          maxWidth: 200,
          minWidth: 100,
        ),
      
        // Setting the height & width of the Container
        // height: 600, // Adjust the height manually according to our need
        // width: 400, // Adjust the width manually according to our need

         // Adjust height according to the platform size
        height: MediaQuery.of(context).size.height*0.5,
        width: MediaQuery.of(context).size.width, // Adjust width according to the platform size
      
        // Alignment helps to align the position of the container's child
        alignment: Alignment.centerLeft,
      
        // Decoration property helps to make the box more presentable
        decoration: BoxDecoration(
          // This gives a border to the box
          border: Border.all(width: 10, color: Colors.black),
      
          // This gives a radius to the box
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
      
          // Color widget provides color to the container
          color: const Color.fromARGB(255, 114, 174, 224),
      
          // Providing shadow to the box
          boxShadow: [
            BoxShadow(
              spreadRadius: 5,
              blurRadius: 5,
              color: const Color.fromARGB(255, 222, 21, 21).withOpacity(0.5),
              offset:
                  const Offset(0, 3), // Changes the position of the shadow
            ),
          ],
        ),
      
        // This is the widget present inside the container
        child: const Text(
          "This is the Container",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
