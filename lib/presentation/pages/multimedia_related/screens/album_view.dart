import 'dart:ui';

import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
            Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.memory(
                    Uint8List.fromList(
                      value.album.image,
                    ),
                    fit: BoxFit.contain,
                  ).image,
                  fit: BoxFit.fill,
                ),
                gradient: const LinearGradient(
                  colors: [
                      Color.fromARGB(255, 42, 25, 94),
                      Color.fromARGB(255, 13, 7, 27),
                      Color.fromARGB(255, 42, 25, 94),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 30),
                child: Scaffold(
                  backgroundColor: Colors.transparent,
                  appBar: AppBar(
                    backgroundColor: Colors.transparent,
                    leading: const BackButton(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: RadialGradient(
                      center: Alignment.topRight,
                      radius: 1.5,
                      colors: [
                          Color.fromARGB(
                            180,
                            63,
                            17,
                            131,
                          ), // Color inicial (esquina)
                          Colors.transparent, // Transición a transparente
                        ],
                      ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  AppBar(
                    backgroundColor: Colors.transparent,
                    leading: const BackButton(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width *0.8,
                    child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.width * 0.4,
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
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10, left: 10),
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
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      value.album.artist,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      value.album.totalSongs,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      value.album.duration,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                             for (var song in value.songs)
                              SimpleTrackListElement(
                                songName: song.name,
                                songDuration: song.duration,
                              ),
                          ],
                        ),
                      ),
                ]
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