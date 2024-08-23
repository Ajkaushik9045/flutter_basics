import 'package:flutter/material.dart';

class BottomNavigationbarWidget extends StatefulWidget {
  const BottomNavigationbarWidget({super.key});

  @override
  State<BottomNavigationbarWidget> createState() =>
      _BottomNavigationbarWidgetState();
}

class _BottomNavigationbarWidgetState
    extends State<BottomNavigationbarWidget> {
  // The index of the currently selected page.
  int pageIndex = 0;

  // A list of colors corresponding to each page.
  final List<Color> pageColors = [
    Colors.blue,
    Colors.black,
    Colors.pink,
    Colors.red,
  ];

  // A list of pages to display in the Scaffold body.
  final pages = [
    const Home(),
    const Profile(),
    const Setting(),
    const Chat(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set the background color of the Scaffold based on the selected page index.
      backgroundColor: pageColors[pageIndex],
      // Display the selected page.
      body: pages[pageIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.purple[100],
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Home icon button
              IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: Icon(
                  Icons.home,
                  color: pageIndex == 0 ? Colors.blue : Colors.grey,
                ),
              ),
              // Profile icon button
              IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: Icon(
                  Icons.person,
                  color: pageIndex == 1 ? Colors.black : Colors.grey,
                ),
              ),
              // Settings icon button
              IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                icon: Icon(
                  Icons.settings,
                  color: pageIndex == 2 ? Colors.pink : Colors.grey,
                ),
              ),
              // Chat icon button
              IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                icon: Icon(
                  Icons.message,
                  color: pageIndex == 3 ? Colors.red : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Home page widget with centered text.
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Home Page',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}

// Profile page widget with centered text.
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Profile Page',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}

// Settings page widget with centered text.
class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Settings Page',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}

// Chat page widget with centered text.
class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Chat Page',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}
