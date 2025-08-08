// screens/gallery_page.dart
import 'package:flutter/material.dart';
import '../widgets/memory_card.dart';

class GalleryPage extends StatelessWidget {
  // List of generic image filenames
  final List<String> imageFiles = [
    'assets/images/s1.jpg',
    'assets/images/s2.jpg',
    'assets/images/s3.jpg',
    'assets/images/s4.jpg',
    'assets/images/s5.jpg',
    'assets/images/s6.jpg',
    'assets/images/s7.jpg',
    'assets/images/s8.jpg',
    'assets/images/s9.jpg',
    'assets/images/s10.jpg',
    'assets/images/s11.jpg',
    'assets/images/s12.jpg',
  ];

  GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery of Memories'),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pink.shade100, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 14,
              mainAxisSpacing: 14,
            ),
            itemCount: imageFiles.length,
            itemBuilder: (context, index) {
              return MemoryCard(imagePath: imageFiles[index]);
            },
          ),
        ),
      ),
    );
  }
}
