import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../application/core/music_player/current_song_on_player.dart';
import '../../../../application/core/music_player/music_player.dart';
import '../../../../infrastructure/core/util/util.dart';

class ComplexTrackListElement extends StatefulHookConsumerWidget {
  const ComplexTrackListElement({
    super.key,
    required this.songId,
    required this.songImage,
    required this.songName,
    required this.songComposer,
    required this.songDuration,
  });

  final String songId;
  final List<int> songImage;
  final String songName;
  final String songComposer;
  final String songDuration;

  @override
  ConsumerState<ComplexTrackListElement> createState() =>
      _ComplexTrackListElementState();
}

class _ComplexTrackListElementState
    extends ConsumerState<ComplexTrackListElement> {
  @override
  Widget build(BuildContext context) {
    // provider to watch
    final CurrentSong currentSongOnPlayer =
        ref.watch(currentSongOnPlayerProvider);
    // listen to player state
    ref.watch(musicPlayerProvider);
    // icon to show based on the player
    ValueNotifier<IconData> iconToDisplay = useState(
      ref
          .read(musicPlayerProvider.notifier)
          .getIconForSingleSongTest(songId: widget.songId),
    );
    // update the icon if the song is not the same
    if (currentSongOnPlayer.id != widget.songId) {
      iconToDisplay.value = Icons.play_arrow;
    }

    void handlePlay() async {
      await ref
          .read(musicPlayerProvider.notifier)
          .playOnlySong(
            songId: widget.songId,
            name: widget.songName,
            artists: widget.songComposer,
          )
          .then((value) {
        iconToDisplay.value = ref
            .read(musicPlayerProvider.notifier)
            .getIconForSingleSong(songId: widget.songId);
        print('////////////////////// Finalizo el play');
      });
    }

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Color.fromARGB(45, 151, 151, 151),
      ),
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 70,
      width: MediaQuery.of(context).size.width - 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                child: (widget.songImage.isNotEmpty)
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: Image.memory(
                                Uint8List.fromList(
                                  widget.songImage,
                                ),
                                fit: BoxFit.contain,
                              ).image,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      )
                    : const Icon(
                        Icons.music_note,
                        size: 60,
                        color: Colors.white,
                      ),
              ),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.songName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      widget.songComposer,
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
                  SongDurationFormatter.format(widget.songDuration),
                  style: const TextStyle(
                    color: Color.fromARGB(213, 180, 180, 180),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {
                    handlePlay();
                  },
                  icon: Icon(
                    iconToDisplay.value,
                    color: const Color.fromARGB(255, 0, 204, 255),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
