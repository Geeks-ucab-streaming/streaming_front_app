import 'dart:typed_data';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../application/multimedia_related/use_cases/use_cases.dart';
import '../../core/widgets/widgets.dart';
import '../widgets/widgets.dart';

class SearchPage extends StatefulHookConsumerWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // text controller
    final searchQueryController = useTextEditingController();
    // provider to listen
    final searchInfo = ref.watch(
      getSearchInfoProvider(searchQueryController.text),
    );

    Widget nameRow(String rowName) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Expanded(
              flex: 10,
              child: Text(
                rowName,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                icon: const Icon(
                  Icons.segment_sharp,
                  size: 30,
                ),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          ],
        ),
      );
    }

    final searchResultWidget = switch (searchInfo) {
      AsyncData(:final value) => Column(
          children: [
            if (searchInfo.value.playlists.isNotEmpty) ...[
              nameRow('Playlists'),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                margin: const EdgeInsets.all(0),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 150,
                    viewportFraction: 0.6,
                    reverse: false,
                    autoPlay: false,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.4,
                    scrollDirection: Axis.horizontal,
                    enableInfiniteScroll: false,
                  ),
                  items: value.playlists.map((playlist) {
                    return Builder(
                      builder: (BuildContext context) {
                        return GestureDetector(
                          onTap: () => context.goNamed('playlist',
                              pathParameters: {'playlistId': playlist.id}),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                image: DecorationImage(
                                  image: Image.memory(
                                    Uint8List.fromList(
                                      playlist.image,
                                    ),
                                    fit: BoxFit.contain,
                                  ).image,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Divider(
                  color: Color.fromARGB(80, 255, 255, 255),
                ),
              ),
            ],
            if (searchInfo.value.albums.isNotEmpty) ...[
              nameRow('Álbumes'),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 180,
                    viewportFraction: 0.4,
                    reverse: false,
                    autoPlay: false,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.4,
                    scrollDirection: Axis.horizontal,
                    enableInfiniteScroll: false,
                  ),
                  items: value.albums.map((album) {
                    return Builder(
                      builder: (BuildContext context) {
                        return GestureDetector(
                          onTap: () => context.goNamed('album',
                              pathParameters: {'albumId': album.id}),
                          child: ClipRRect(
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
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Divider(
                  color: Color.fromARGB(80, 255, 255, 255),
                ),
              ),
            ],
            if (searchInfo.value.artists.isNotEmpty) ...[
              nameRow('Artistas'),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (var artist in value.artists)
                      InkWell(
                        onTap: () => context.goNamed('artist',
                            pathParameters: {'artistId': artist.id}),
                        child: ArtistCoverWidget(
                          artistImage: artist.image,
                          artistName: artist.name,
                          widgetHeight: 180,
                          imageSize: 130,
                        ),
                      )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Divider(
                  color: Color.fromARGB(80, 255, 255, 255),
                ),
              ),
            ],
            if (searchInfo.value.trackList.isNotEmpty) ...[
              nameRow('Canciones'),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    for (var song in value.trackList)
                      ComplexTrackListElement(
                        songId: song.id,
                        songName: song.name,
                        songImage: song.image,
                        songComposer: song.composer,
                        songDuration: song.duration,
                      ),
                  ],
                ),
              ),
            ],
            const SizedBox(height: 25),
          ],
        ),
      AsyncError(:final error) => Column(
          children: [
            if (error is DioException && searchQueryController.text != '') ...[
              ErrorMessage(
                error: error,
                message:
                    'No se ha encontrado ningún resultado para "${searchQueryController.text}" \n\n ',
                secondMessage:
                    'Asegúrate de que las palabras estén escritas correctamente o prueba con menos palabras clave o con otras distintas.',
              )
            ],
            if (error is DioException && searchQueryController.text == '') ...[
              const SearchMessage(
                message: 'Explora todo lo que tenemos',
              ),
            ]
          ],
        ),
      _ => const Loading()
    };

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            const DefaultBackground(),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    child: AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      leading: const BackButton(
                        color: Colors.white,
                      ),
                      title: const Text(
                        'Buscar artista o tema ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 40,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 63, 40, 103)
                            .withOpacity(0.9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: TextField(
                          controller: searchQueryController,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 25.0),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: '¿Qué deseas escuchar?',
                            hintStyle: const TextStyle(
                                color: Colors.grey, height: 1.5),
                            suffixIcon: IconButton(
                              icon: const Icon(
                                Icons.clear,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                searchQueryController.clear();
                              },
                            ),
                          ),
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 254, 254),
                              height: 1.5),
                          textAlign: TextAlign.left,
                          onChanged: (value) {
                            // call the provider to update return value
                            ref.read(
                              getSearchInfoProvider(searchQueryController.text),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  searchResultWidget,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
