import 'package:flutter/material.dart';

import '../../../../domain/multimedia_related/entities/entities.dart';

class SimpleTrackListElement extends StatelessWidget {
  const SimpleTrackListElement(this.trackToDisplay, {super.key});

  final Song trackToDisplay;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(80, 151, 151, 151),
      ),
      child: ListTile(
        leading: const Icon(
          Icons.play_arrow,
          color: Colors.blueAccent,
        ),
        title: Text(
          trackToDisplay.getName(),
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        trailing: Text(
          '${trackToDisplay.getDuration()}',
          style: const TextStyle(
              color: Color.fromARGB(213, 180, 180, 180), fontSize: 18),
        ),
      ),
    );
  }
}
