import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:streaming_front_app/domain/multimedia_related/data_presentation/data_presentation.dart';

class ComplexTrackListElement extends StatelessWidget {
  const ComplexTrackListElement({
    super.key,
    required this.trackToDisplay,
  });

  final HomeTrackListElement trackToDisplay;

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
                    trackToDisplay.image,
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
          trackToDisplay.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        subtitle: Text(
          trackToDisplay.composer,
          style: const TextStyle(
            color: Color.fromARGB(213, 180, 180, 180),
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              trackToDisplay.duration,
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
