import 'dart:typed_data';

import 'package:flutter/material.dart';
import '../../../../domain/multimedia_related/entities/entities.dart';

class TrackListElement2 extends StatelessWidget {
  const TrackListElement2(this.trackToDisplay, {super.key});

  final Song trackToDisplay;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(80, 151, 151, 151),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        //visualDensity: VisualDensity.compact,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: Image.memory(
                  Uint8List.fromList(
                    trackToDisplay.getImage(),
                  ),
                  width: MediaQuery.of(context).size.width - 40,
                  height: 300,
                  fit: BoxFit.contain,
                ).image,
                fit: BoxFit.fill,
              ),
            ),
            height: 300,
          ),
        ),
        title: Text(
          trackToDisplay.getName(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        subtitle: Text(
          trackToDisplay.getArtist(),
          style: const TextStyle(
            color: Color.fromARGB(213, 180, 180, 180),
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '${trackToDisplay.getDuration()}',
              style: const TextStyle(
                color: Color.fromARGB(213, 180, 180, 180),
              ),
            ),
            const Icon(
              Icons.play_arrow,
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
