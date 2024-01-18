import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../application/core/music_player/music_player.dart';

class PlaylistPlayer extends StatefulHookConsumerWidget {
  const PlaylistPlayer({
    Key? key,
    required this.currentSongId,
    required this.playListSongs,
    required this.songName,
  }) : super(key: key);

  final String currentSongId;
  final List<String> playListSongs;
  final String songName;

  @override
  ConsumerState<PlaylistPlayer> createState() => _PlaylistPlayerState();
}

class _PlaylistPlayerState extends ConsumerState<PlaylistPlayer> {
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    // listen to player state
    final playerState = ref.watch(musicPlayerProvider);
    // icon to show based on the player
    ValueNotifier<IconData> iconToDisplay = useState(
      ref
          .read(musicPlayerProvider.notifier)
          .getIconForSingleSong(songId: widget.currentSongId),
    );
    // listen to player state
    ref.watch(musicPlayerProvider);

    void handlePlay() {
      ref.read(musicPlayerProvider.notifier).playPlaylist(
            currentSongId: widget.currentSongId,
            songsIds: widget.playListSongs,
            name: widget.songName,
            artists: '',
          );
      iconToDisplay.value =
          (playerState.isPlaying()) ? Icons.pause : Icons.play_arrow;
    }

    return Container(
      color: const Color.fromARGB(1, 54, 52, 52),
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
              color: const Color.fromARGB(
                  0, 33, 212, 243), // Color de fondo circular
            ),
            child: IconButton(
              icon: Icon(
                iconToDisplay.value,
              ),
              iconSize: 25,
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
              const Placeholder(
                fallbackHeight: 50,
                fallbackWidth: 250,
              ),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.replay_10_rounded),
                    iconSize: 30,
                    color: Colors.white,
                    onPressed: () {
                      // Handle previous song logic
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.forward_30_rounded),
                    iconSize: 30,
                    color: Colors.white,
                    onPressed: () {
                      // Handle previous song logic
                    },
                  ),
                  const ShuffleButton(),
                  IconButton(
                    icon: const Icon(Icons.volume_up_rounded),
                    iconSize: 30,
                    color: Colors.white,
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ShuffleButton extends StatefulWidget {
  const ShuffleButton({
    Key? key,
  }) : super(key: key);

  @override
  _ShuffleButtonState createState() => _ShuffleButtonState();
}

class _ShuffleButtonState extends State<ShuffleButton> {
  bool isShuffle = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isShuffle ? Icons.shuffle_on_outlined : Icons.shuffle),
      iconSize: 30,
      color: Colors.white,
      onPressed: () {
        setState(() {
          isShuffle = !isShuffle;
        });
      },
    );
  }
}
