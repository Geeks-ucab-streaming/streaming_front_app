import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../application/multimedia_related/use_cases/playlist_info/get_playlist_info.dart';
import '../../core/widgets/widgets.dart';
import '../widgets/widgets.dart';

class PlaylistView extends ConsumerWidget {
  const PlaylistView({super.key, required this.playlistId});

  final String playlistId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //provider to listen
    final playlistInfo = ref.watch(getPlaylistInfoProvider(playlistId));

    final widgetBody = switch (playlistInfo) {
      AsyncData(:final value) => Scaffold(
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                const DefaultBackground(),
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      AppBar(
                        backgroundColor: Colors.transparent,
                        leading: const BackButton(
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20, right: 20),
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: MediaQuery.of(context).size.width * 0.5,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black45,
                                  blurRadius: 10,
                                  spreadRadius: 0,
                                  offset: Offset(0, 5),
                                ),
                              ],
                              image: DecorationImage(
                                image: Image.memory(
                                  Uint8List.fromList(
                                    value.playlist.image,
                                  ),
                                  fit: BoxFit.contain,
                                ).image,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    value.playlist.name,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '${value.songs.length.toString()} canciones',
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5.0),
                                    child: Row(children: [
                                      const Icon(
                                        size: 15.0,
                                        Icons.access_time_rounded,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        ' ${value.playlist.duration.substring(3, 5)} minutos',
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      )
                                    ]),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      PlaylistPlayer(
                        songsToPlayIds: value.songs.map((e) => e.id).toList(),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            for (var song in value.songs)
                              SimpleTrackListElement(
                                songId: song.id,
                                songName: song.name,
                                songDuration: song.duration,
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      AsyncError(:final Error error) => Scaffold(
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                const DefaultBackground(),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppBar(
                        backgroundColor: Colors.transparent,
                        leading: const BackButton(
                          color: Colors.white,
                        ),
                      ),
                      ErrorMessage(
                        error: error,
                        message: 'Algo salió mal.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      _ => Scaffold(
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                const DefaultBackground(),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppBar(
                        backgroundColor: Colors.transparent,
                        leading: const BackButton(
                          color: Colors.white,
                        ),
                      ),
                      const Loading(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    };

    return widgetBody;
  }
}
