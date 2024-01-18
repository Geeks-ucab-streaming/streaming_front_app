import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:streaming_front_app/application/core/music_player/current_song_on_player.dart';
import 'package:streaming_front_app/application/core/music_player/music_player.dart';
import 'package:streaming_front_app/domain/multimedia_related/data_presentation/data_presentation.dart';

class PlaylistPlayer extends StatefulHookConsumerWidget {
  const PlaylistPlayer({
    Key? key,
    required this.playListSongs,
  }) : super(key: key);

  final List<PlaylistSongPresentation> playListSongs;

  @override
  ConsumerState<PlaylistPlayer> createState() => _PlaylistPlayerState();
}

class _PlaylistPlayerState extends ConsumerState<PlaylistPlayer> {
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    // provider to watch
    final CurrentSong currentSongOnPlayer =
        ref.watch(currentSongOnPlayerProvider);
    // listen to player state
    ref.watch(musicPlayerProvider);

    void handlePlay() async {
      await ref
          .read(musicPlayerProvider.notifier)
          .playPlaylist(
            songsIds: widget.playListSongs.map((e) => e.id).toList(),
            currentSongId: widget.playListSongs.map((e) => e.id).toList()[0],
            name: widget.playListSongs[0].name,
            artists: '',
          )
          .then((value) {
        print('////////////////////// Finalizo el play');
      });
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
                isPlaying ? Icons.pause : Icons.play_arrow,
              ),
              iconSize: 35,
              color: Colors.white,
              onPressed: () {
                handlePlay();
              },
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/audio_waveform_placeholder.png',
                width: 260,
                height: 60,
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
