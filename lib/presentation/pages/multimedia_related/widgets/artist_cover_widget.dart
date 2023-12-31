import 'dart:typed_data';

import 'package:flutter/material.dart';

class ArtistCoverWidget extends StatelessWidget {
  final List<int> artistImage;
  final String artistName;

  const ArtistCoverWidget({
    super.key,
    required this.artistImage,
    required this.artistName,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100.0),
      ),
      color: Colors.transparent,
      child: Column(
        children: [
          ClipOval(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  image: Image.memory(
                    Uint8List.fromList(
                      artistImage,
                    ),
                    fit: BoxFit.contain,
                  ).image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              artistName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
