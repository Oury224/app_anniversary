// screens/home_page.dart
import 'package:flutter/material.dart';
import 'gallery_page.dart';
import 'messages_page.dart';
import 'notes_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Birthday Memories'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pink.shade100, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.cake, color: Colors.pink, size: 80),
            SizedBox(height: 24),
            _MenuButton(
              icon: Icons.photo_album,
              label: 'View Gallery',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GalleryPage()),
              ),
            ),
            SizedBox(height: 16),
            _MenuButton(
              icon: Icons.message,
              label: '21 Birthday Messages',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessagesPage()),
              ),
            ),
            SizedBox(height: 16),
            _MenuButton(
              icon: Icons.edit_note,
              label: 'My Notes',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotesPage()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom menu button widget for reusability and style
class _MenuButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _MenuButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(220, 50),
        backgroundColor: Colors.pink.shade200,
        foregroundColor: Colors.white,
        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      icon: Icon(icon, size: 26),
      label: Text(label),
      onPressed: onTap,
    );
  }
}
