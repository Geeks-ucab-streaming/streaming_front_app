import 'package:flutter/material.dart';

class AlbumCoverWidget extends StatelessWidget {
  final ImageProvider albumImage;
  final String albumName;

  AlbumCoverWidget({required this.albumImage, required this.albumName});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
              image: albumImage,
              fit: BoxFit.cover,
              width: 100,
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              albumName,
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
