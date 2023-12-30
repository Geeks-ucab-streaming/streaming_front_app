import 'dart:typed_data';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'package:overlapped_carousel/overlapped_carousel.dart';

import '../../../../domain/multimedia_related/entities/entities.dart';
import '../../../../infrastructure/core/util/util.dart';
import '../../../../application/multimedia_related/use_cases/use_cases.dart';
import '../../core/widgets/widgets.dart';
import '../widgets/widgets.dart';

class HomePage extends ConsumerWidget {
  HomePage({super.key});

  final Map<String, String> artists = {
    'Beatles': 'assets/images/artist1.jpg',
    'Metallica': 'assets/images/artist2.png',
    'New Jean': 'assets/images/artist3.jpg',
    'Twice': 'assets/images/artist4.jpg',
  };

  final List<Song> songs = [
    Song(
      id: SongId('1'),
      name: SongName('Track 1'),
      //SongReference('urldummy'),
      image: SongImage([]),
      date: SongCreationDate(DateTime(2021, 5, 1)),
      previewURL: SongPreview('urldummy'),
      genres: [
        SongGenre('Pop'),
        SongGenre('Rock'),
      ],
      duration: SongDuration(193),
    ),
    // Track(
    //   '2',
    //   'Track 2',
    //   'Artist 2',
    //   'https://picsum.photos/50/50',
    //   3.00,
    // ),
    Song(
      id: SongId('2'),
      name: SongName('Track 2'),
      //SongReference('urldummy'),
      image: SongImage([]),
      date: SongCreationDate(DateTime(2021, 5, 1)),
      previewURL: SongPreview('urldummy'),
      genres: [
        SongGenre('Pop'),
        SongGenre('Rock'),
      ],
      duration: SongDuration(193),
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
    final homeInfo = ref.watch(getHomeInfoProvider);

    const BoxDecoration boxDecoration = BoxDecoration(
      color: Colors.transparent,
    );
    final homeBodyWidget = switch (homeInfo) {
      AsyncData(:final value) => Column(
          children: [
            /*
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              margin: const EdgeInsets.all(0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                      image: Image.memory(
                        Uint8List.fromList(
                          value.advertisement.image,
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
            */
            nameRow('Playlist'),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              margin: const EdgeInsets.all(0),
              child: GridView.count(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                childAspectRatio: 1.8,
                children: [
                  for (var playlist in value.playlists)
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
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
                ],
              ),
            ),
            nameRow('Aqustico Experience'),
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 150,
                  viewportFraction: 0.4,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 1000),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  //onPageChanged: callbackFunction,
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
            /*
          SizedBox(
            height: 200,
            child: OverlappedCarousel(
              widgets: value.albums.map((album) {
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
                        height: 300,
                      ),
                    );
                  },
                );
              }).toList(),
              //List of widgets
              currentIndex: 2,
              onClicked: (index) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("You clicked at $index"),
                  ),
                );
              },
            ),
          ),*/ /*
          nameRow('Artistas Trending'),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (var element in artists.entries)
                    InkWell(
                      onTap: () => Navigator.pushNamed(context, '/artist'),
                      child: Container(
                        height: 150,
                        child: ArtistCoverWidget(
                          artistImage: AssetImage(element.value),
                          artistName: element.key,
                        ),
                      ),
                    )
                ],
              ),),
              */
            /*
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
          ),*/
            const SizedBox(height: 25),
            const PlayerBar(
              songName: 'Song 1',
              artistName: 'Artist 1',
            ),
          ],
        ),
      AsyncError(:final error) => Container(
          child: Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: GenericText(
                text: error.toString(),
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
      body: SizedBox(
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
                            value: 0,
                            child: Text('Perfil'),
                          ),
                          const PopupMenuItem<int>(
                            value: 1,
                            child: Text('Términos y condiciones'),
                          ),
                          const PopupMenuItem<int>(
                            value: 2,
                            child: Text('Cerrar Sesión'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  homeBodyWidget,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
