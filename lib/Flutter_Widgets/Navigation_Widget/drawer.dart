import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The AppBar provides the title and a menu icon for the drawer
      appBar: AppBar(
        title: const Text("Drawer Widget"), // Title displayed in the AppBar
        centerTitle: true, // Centers the title within the AppBar
        backgroundColor: Colors.amber, // Background color of the AppBar
      ),
      
      // The Drawer widget, which slides in from the left side of the screen
      drawer: Drawer(
        // Column widget to stack items vertically in the drawer
        child: Column(
          children: [
            // UserAccountsDrawerHeader provides account details like name, email, and profile picture
            const UserAccountsDrawerHeader(
              accountName: Text("Anuj Kaushik"), // Displayed account name
              accountEmail: Text("staraj89@gmail.com"), // Displayed account email
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/lio2.jpg"), // Profile picture
              ),
              otherAccountsPictures: [
                // Additional profile pictures (if any)
                CircleAvatar(
                  backgroundImage: AssetImage("assets/lio2.jpg"),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/lio2.jpg"),
                ),
              ],
              decoration: BoxDecoration(color: Colors.blue), // Background color for the header
            ),
            
            // DrawerHeader provides a header section for the drawer, typically used for branding
            const DrawerHeader(
              child: Text(
                "Header Drawer", 
                style: TextStyle(color: Colors.blue), // Text style for the header
              ),
            ),
            
            // ListTile represents an item in the drawer
            ListTile(
              leading: const Icon(Icons.home), // Icon before the title
              title: const Text('Home'), // Title of the item
              onTap: () {
                // Close the drawer and optionally navigate to a different screen
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            const Divider(), // Divider line between items for visual separation

            // Another ListTile item
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      
      // The main content of the screen
      body: Container(
        color: Colors.white, // Background color of the screen
        alignment: Alignment.center, // Center the content within the screen
        child: const Text("This is Drawer Widget"), // Main text displayed in the screen
      ),
    );
  }
}
