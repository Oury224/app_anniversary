import 'package:flutter/material.dart';

class MemoryCard extends StatelessWidget {
  final String imagePath;

  const MemoryCard({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    // Scrapbook style: random rotation for a playful look
    final double rotationAngle = (imagePath.hashCode % 8 - 4) * 0.02; // [-0.08, 0.08] approx.

    return Transform.rotate(
      angle: rotationAngle,
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
            // Optional: semi-transparent overlay for scrapbook effect
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                color: Colors.white.withOpacity(0.7),
                child: Text(
                  imagePath.split('/').last, // Shows image filename as a label
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.pink[800],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
