import 'dart:typed_data';

import 'package:flutter/material.dart';

class ComplexTrackListElement extends StatelessWidget {
  const ComplexTrackListElement({
    super.key,
    required this.songImage,
    required this.songName,
    required this.songComposer,
    required this.songDuration,
  });

  final List<int> songImage;
  final String songName;
  final String songComposer;
  final String songDuration;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Color.fromARGB(45, 151, 151, 151),
      ),
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: Image.memory(
                          Uint8List.fromList(
                            songImage,
                          ),
                          fit: BoxFit.contain,
                        ).image,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      songName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      songComposer,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Color.fromARGB(145, 255, 255, 255),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          SizedBox(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  songDuration,
                  style: const TextStyle(
                    color: Color.fromARGB(213, 180, 180, 180),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.play_arrow,
                  color: Color.fromARGB(255, 0, 204, 255),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
