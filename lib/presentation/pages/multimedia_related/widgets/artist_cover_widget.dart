import 'dart:typed_data';

import 'package:flutter/material.dart';

class ArtistCoverWidget extends StatelessWidget {
  final List<int> artistImage;
  final String artistName;
  final double widgetHeight;
  final double imageSize;

  const ArtistCoverWidget({
    super.key,
    required this.artistImage,
    required this.artistName,
    required this.widgetHeight,
    required this.imageSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: SizedBox(
        height: widgetHeight,
        child: Column(
          children: [
            ClipOval(
              child: Container(
                height: imageSize,
                width: imageSize,
                decoration: BoxDecoration(
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
      ),
    );
  }
}
