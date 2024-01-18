import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:streaming_front_app/application/core/music_player/music_player.dart';
import 'package:streaming_front_app/infrastructure/core/util/util.dart';

class SimpleTrackListElement extends ConsumerWidget {
  const SimpleTrackListElement({
    super.key,
    required this.songId,
    required this.songName,
    required this.songDuration,
  });

  final String songId;
  final String songName;
  final String songDuration;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void handlePlay() {
      ref.read(musicPlayerProvider.notifier).playOnlySong(
            songId: songId,
            name: songName,
            artists: '',
          );
    }

    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromARGB(69, 253, 253, 253),
            width: 0.5,
          ),
        ),
        color: Color.fromARGB(30, 151, 151, 151),
      ),
      child: ListTile(
        leading: InkWell(
          onTap: () {
            handlePlay();
          },
          child: const Icon(
            Icons.play_arrow,
            color: Color.fromARGB(255, 0, 230, 240),
          ),
        ),
        title: Text(
          songName,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        trailing: Text(
          SongDurationFormatter.format(songDuration),
          style: const TextStyle(
              color: Color.fromARGB(213, 180, 180, 180), fontSize: 18),
        ),
      ),
    );
  }
}
