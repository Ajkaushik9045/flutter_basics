import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold provides the basic structure of the visual interface, including the app bar, body, and other components.
      appBar: AppBar(
        // AppBar is a material design app bar that can be used to display titles, navigation, and actions.
        title: const Text("Image Widget"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: GestureDetector(
        // GestureDetector detects gestures such as taps, drags, and scales.
        child: Center(
          // Center widget centers its child within itself.
          child: Padding(
            padding: const EdgeInsets.only(top: 28.0),
            // Padding adds empty space around its child.
            child: Column(
              // Column arranges its children vertically.
              children: [
                const Text(
                  "Fetch image from assets",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(height: 10),
                // SizedBox provides an empty space with a specified width and/or height.
                Image.asset(
                  // Image.asset displays an image from the local assets.
                  "assets/lion.jpeg",
                  height: 100,
                  width: 100,
                ),
                const SizedBox(height: 20),
                const Text(
                  "Fetched image from network",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(height: 10),
                Image.network(
                  // Image.network displays an image from the web.
                  "https://jooinn.com/images/close-up-portrait-of-lion.jpg",
                  height: 100,
                  width: 100,
                  loadingBuilder: (context, child, loadingProgress) {
                    // loadingBuilder displays a widget while the image is loading.
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        // CircularProgressIndicator is a material design circular progress indicator.
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) {
                    // errorBuilder displays a widget if the image fails to load.
                    return const Icon(Icons.error);
                  },
                ),
                const SizedBox(height: 20),
                const Text(
                  "Fetched image using CachedNetworkImage Package",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(height: 10),
                CachedNetworkImage(
                  // CachedNetworkImage displays an image from the web with caching and error handling.
                  imageUrl:
                      "https://jooinn.com/images/close-up-portrait-of-lion.jpg",
                  placeholder: (context, url) {
                    // Placeholder widget is displayed while the image is loading.
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  errorWidget: (context, url, error) {
                    // Error widget is displayed if the image fails to load.
                    return const Icon(Icons.error);
                  },
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}