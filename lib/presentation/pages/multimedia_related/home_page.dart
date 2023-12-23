import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../infrastructure/core/util/launch_url.dart';
import '../core/widgets/default_background.dart';
import '../../../domain/multimedia_related/track.dart';
import 'widgets/artist_cover_widget.dart';
import 'widgets/complex_track_list_element.dart';
import 'widgets/player_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> playlists = [
    'Tradicional venezolana',
    'Pop Latino',
    'Alternativo',
    'Urbana',
  ];

  Map<String, String> artists = {
    'Beatles': 'assets/images/artist1.jpg',
    'Metallica': 'assets/images/artist2.png',
    'New Jean': 'assets/images/artist3.jpg',
    'Twice': 'assets/images/artist4.jpg',
  };

  List<Track> songs = [
    Track(
      '1',
      TrackName('Track 1'),
      TrackReference('urldummy'),
      TrackImage('https://picsum.photos/50/50'),
      TrackCreationDate(DateTime(2021,5,1)),
      TrackPreview('urldummy'),
      [
        TrackGenre('Pop'),
        TrackGenre('Rock'),
      ],
    ),
    // Track(
    //   '2',
    //   'Track 2',
    //   'Artist 2',
    //   'https://picsum.photos/50/50',
    //   3.00,
    // ),
    Track(
      '2',
      TrackName('Track 2'),
      TrackReference('urldummy'),
      TrackImage('https://picsum.photos/50/50'),
      TrackCreationDate(DateTime(2021,5,1)),
      TrackPreview('urldummy'),
      [
        TrackGenre('Pop'),
        TrackGenre('Rock'),
      ],
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
  Widget build(BuildContext context) {
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
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        'https://picsum.photos/400/300',
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                  ),
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
                    child: myCarousel(),
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

CarouselSlider myCarousel() {
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
                  image: AssetImage('assets/images/portada${i}.png'),
                  fit: BoxFit.fill,
                )),
          );
        },
      );
    }).toList(),
  );
}
