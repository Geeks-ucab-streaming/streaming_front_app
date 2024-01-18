import 'dart:ui';

import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:streaming_front_app/infrastructure/core/util/util.dart';
import 'package:streaming_front_app/presentation/pages/core/widgets/widgets.dart';
import '../../../../application/multimedia_related/use_cases/album_info/get_album_info.dart';
import '../widgets/widgets.dart';

class AlbumView extends ConsumerWidget {
  AlbumView({super.key, required this.albumId});

  final String albumId;
  final CarouselOptions myCarouselOptions = CarouselOptions(
    height: 200.0,
    aspectRatio: 1,
    enableInfiniteScroll: true,
    reverse: false,
    enlargeCenterPage: true,
    enlargeFactor: 0.3,
    viewportFraction: 0.5,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // provider to listen
    final albumInfo = ref.watch(getAlbumInfoProvider(albumId));

    final widgetBody = switch (albumInfo) {
      AsyncData(:final value) => Scaffold(
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                const DefaultBackground(),
                SingleChildScrollView(
                  child: Column(children: <Widget>[
                    AppBar(
                      backgroundColor: Colors.transparent,
                      leading: const BackButton(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      child: Column(
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
                                    value.album.image,
                                  ),
                                  fit: BoxFit.contain,
                                ).image,
                                fit: BoxFit.fill,
                              ),
                            ),
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
                                    value.album.name,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    value.album.artist,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '${value.album.totalSongs} ',
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5.0),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          size: 15.0,
                                          Icons.access_time_rounded,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          ' ${SongDurationFormatter.format(value.album.duration)} minutos',
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    PlaylistPlayer(
                      currentSongId: value.songs.map((e) => e.id).toList()[0],
                      playListSongs: value.songs.map((e) => e.id).toList(),
                      songName: value.songs[0].name,
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
                  ]),
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
                      ErrorImage(
                        error: error,
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
