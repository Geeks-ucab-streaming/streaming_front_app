import 'package:flutter/material.dart';

class ArtistCoverWidget extends StatelessWidget {
  final ImageProvider artistImage;
  final String artistName;

  ArtistCoverWidget({required this.artistImage, required this.artistName});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Column(
        children: [
          ClipOval(
            child: Image(
              image: artistImage,
              fit: BoxFit.cover,
              width: 100,
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              artistName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}