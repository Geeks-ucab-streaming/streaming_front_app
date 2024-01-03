import 'dart:typed_data';
import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../application/multimedia_related/use_cases/use_cases.dart';
import '../../core/widgets/widgets.dart';
import '../widgets/widgets.dart';

class ArtistView extends ConsumerWidget {
  ArtistView({super.key, required this.artistId});

  final String artistId;
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
    final artistInfo = ref.watch(getArtistInfoProvider(artistId));

    final widgetBody = switch (artistInfo) {
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
                          value.artist.image,
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
                        height: MediaQuery.of(context).size.width * 0.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 40, right: 20),
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
                                      value.artist.image,
                                    ),
                                    fit: BoxFit.contain,
                                  ).image,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      value.artist.name,
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.clip,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      value.artist.genre,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      value.artist.totalAmountAlbums,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      value.artist.totalSongsAlbums,
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
                        height: 30,
                      ),
                      SizedBox(
                        height: 150,
                        child: CarouselSlider(
                          options: CarouselOptions(
                            height: 150,
                            viewportFraction: 0.4,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 1000),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.3,
                            enableInfiniteScroll: false,
                            scrollDirection: Axis.horizontal,
                          ),
                          items: value.albums.map((album) {
                            return Builder(
                              builder: (BuildContext context) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      image: DecorationImage(
                                        image: Image.memory(
                                          Uint8List.fromList(
                                            album.image,
                                          ),
                                          fit: BoxFit.contain,
                                        ).image,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            for (var song in value.songs)
                              ComplexTrackListElement(
                                songName: song.name,
                                songImage: song.image,
                                songComposer: song.composer,
                                songDuration: song.duration,
                              ),
                          ],
                        ),
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
