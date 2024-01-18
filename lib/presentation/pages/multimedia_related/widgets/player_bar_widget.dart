import 'package:flutter/material.dart';
//import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:streaming_front_app/application/core/music_player/music_player.dart';

import '../../../../application/core/music_player/current_song_on_player.dart';

class PlayerBar extends StatefulHookConsumerWidget {
  const PlayerBar({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<PlayerBar> createState() => _PlayerBarState();
}

class _PlayerBarState extends ConsumerState<PlayerBar> {
  @override
  Widget build(BuildContext context) {
    // provider to watch
    final CurrentSong currentSongOnPlayer =
        ref.watch(currentSongOnPlayerProvider);
    // listen to player state
    ref.watch(musicPlayerProvider);
    // is playing value
    //ValueNotifier<bool> isPlaying = useState(false);

    void handlePlay() {
      ref.read(musicPlayerProvider.notifier).playOnlySong(
            songId: currentSongOnPlayer.getId(),
            name: currentSongOnPlayer.getName(),
            artists: currentSongOnPlayer.getArtists(),
          );
    }

    void handleNextSong() {
      ref.read(musicPlayerProvider.notifier).playNextSong();
    }

    void handlePreviousSong() {
      ref.read(musicPlayerProvider.notifier).playPreviousSong();
    }

    return Container(
      color: const Color.fromARGB(255, 54, 52, 52),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color:
                  Color.fromARGB(255, 33, 212, 243), // Color de fondo circular
            ),
            child: IconButton(
              icon: const Icon(
                Icons.play_arrow,
              ),
              color: Colors.white,
              onPressed: () {
                handlePlay();
              },
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ref.watch(currentSongOnPlayerProvider.notifier).getName(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                ref.watch(currentSongOnPlayerProvider.notifier).getArtists(),
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const Spacer(),
          const TimeText(currentTime: ''),
          IconButton(
            icon: const Icon(Icons.skip_previous),
            color: Colors.white,
            onPressed: () {
              // Handle previous song logic
              handlePreviousSong();
            },
          ),
          IconButton(
            icon: const Icon(Icons.skip_next),
            color: Colors.white,
            onPressed: () {
              // Handle next song logic
              handleNextSong();
            },
          ),
        ],
      ),
    );
  }
}

class TimeText extends StatefulWidget {
  final String currentTime;

  const TimeText({
    Key? key,
    required this.currentTime,
  }) : super(key: key);

  @override
  _TimeTextState createState() => _TimeTextState();
}

class _TimeTextState extends State<TimeText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.currentTime,
      style: const TextStyle(
        color: Colors.white,
      ),
    );
  }
}
