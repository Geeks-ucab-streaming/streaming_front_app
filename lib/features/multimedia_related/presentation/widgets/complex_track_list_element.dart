import 'package:flutter/material.dart';
import 'package:streaming_front_app/features/multimedia_related/domain/entities/track.dart';

class TrackListElement2 extends StatelessWidget {
  const TrackListElement2(this.trackToDisplay, {super.key});

  final Track trackToDisplay;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(80, 151, 151, 151),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        //visualDensity: VisualDensity.compact,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            trackToDisplay.imageURL,
            width: 50,
            height: 50,
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
          trackToDisplay.compositor,
          style: const TextStyle(
            color: Color.fromARGB(213, 180, 180, 180),
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '${trackToDisplay.duration}',
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