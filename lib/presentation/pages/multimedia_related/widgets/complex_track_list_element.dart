import 'package:flutter/material.dart';
import 'package:streaming_front_app/domain/multimedia_related/track.dart';

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
            trackToDisplay.getImage(),
            width: 50,
            height: 50,
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
