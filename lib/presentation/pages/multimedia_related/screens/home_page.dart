import 'dart:typed_data';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../domain/multimedia_related/entities/entities.dart';
import '../../../../infrastructure/core/util/util.dart';
import '../../../providers/providers.dart';
import '../../core/widgets/widgets.dart';
import '../widgets/widgets.dart';

class HomePage extends ConsumerWidget {
  HomePage({super.key});

  final List<String> playlists = [
    'Tradicional venezolana',
    'Pop Latino',
    'Alternativo',
    'Urbana',
  ];

  final Map<String, String> artists = {
    'Beatles': 'assets/images/artist1.jpg',
    'Metallica': 'assets/images/artist2.png',
    'New Jean': 'assets/images/artist3.jpg',
    'Twice': 'assets/images/artist4.jpg',
  };

  final List<Track> songs = [
    Track(
      '1',
      'Track 1',
      'Artist 1',
      'https://picsum.photos/50/50',
      3.00,
    ),
    Track(
      '2',
      'Track 2',
      'Artist 2',
      'https://picsum.photos/50/50',
      3.00,
    ),
  ];

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
                Icons.keyboard_arrow_right,
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

  void handleClick(int item, BuildContext context) {
    switch (item) {
      case 0:
        Navigator.pushNamed(context, '/perfil');
        break;
      case 1:
        UrlLauncher.launchUrlUtil(
          Uri.parse('https://aqustico.com/terminos-y-condiciones/'),
        );
        break;
      case 2:
        Navigator.pop(context);
        Navigator.pushNamed(context, '/landing');
        break;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // provider to listen
    final advertisement = ref.watch(getRandomAdvertisementProvider);
    const BoxDecoration boxDecoration = BoxDecoration(
      color: Colors.transparent,
    );
    final advertisementWidget = switch (advertisement) {
      AsyncData(:final value) => Padding(
          padding: const EdgeInsets.all(20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  image: Image.memory(
                    Uint8List.fromList(
                      value.image.image,
                    ),
                    width: MediaQuery.of(context).size.width - 40,
                    height: 300,
                    fit: BoxFit.contain,
                  ).image,
                  fit: BoxFit.fill,
                ),
              ),
              height: 300,
            ),
          ),
        ),
      AsyncError(/*:final error*/) => Container(
          child: Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: GenericText(
                text: 'Ups no hay conexión',
                fontSize: 18,
                isBold: true,
              ),
            ),
          ),
        ),
      _ => Container(
          decoration: boxDecoration,
          height: 200,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 4,
            ),
            child: const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          ),
        ),
    };

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            default_background(context),
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
                    actions: [
                      IconButton(
                        icon: const Icon(Icons.search),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context, '/search');
                        },
                      ),
                      PopupMenuButton<int>(
                        onSelected: (item) => handleClick(item, context),
                        child: const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ),
                        itemBuilder: (context) => [
                          const PopupMenuItem<int>(
                              value: 0, child: Text('Perfil')),
                          const PopupMenuItem<int>(
                              value: 1, child: Text('Términos y condiciones')),
                          const PopupMenuItem<int>(
                              value: 2, child: Text('Cerrar Sesión')),
                        ],
                      ),
                    ],
                  ),
                  advertisementWidget,
                  nameRow('Playlist'),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    margin: const EdgeInsets.all(0),
                    child: GridView.count(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      childAspectRatio: 1.8,
                      children: [
                        for (var element in playlists)
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.blue,
                            ),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Text(
                                element,
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ), // your child widget here
                          )
                      ],
                    ),
                  ),
                  nameRow('Aqustico Experience'),
                  Container(
                    child: myCarouselHomePage(),
                  ),
                  nameRow('Artistas Trending'),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          for (var element in artists.entries)
                            InkWell(
                              onTap: () =>
                                  Navigator.pushNamed(context, '/artist'),
                              child: Container(
                                height: 150,
                                child: ArtistCoverWidget(
                                  artistImage: AssetImage(element.value),
                                  artistName: element.key,
                                ),
                              ),
                            )
                        ],
                      )),
                  nameRow('Tracklist'),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        for (var element in songs)
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            height: 70,
                            child: TrackListElement2(element),
                          )
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  const PlayerBar(
                    songName: 'Song 1',
                    artistName: 'Artist 1',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

CarouselSlider myCarouselHomePage() {
  CarouselOptions myOptions = CarouselOptions(
    height: 200.0,
    aspectRatio: 1,
    enableInfiniteScroll: true,
    reverse: false,
    enlargeCenterPage: true,
    enlargeFactor: 0.3,
    viewportFraction: 0.5,
  );

  return CarouselSlider(
    options: myOptions,
    items: [1, 2, 3, 4, 5].map((i) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
            width: 200.0,
            margin: const EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                image: DecorationImage(
                  image: AssetImage('assets/images/portada$i.png'),
                  fit: BoxFit.fill,
                )),
          );
        },
      );
    }).toList(),
  );
}
