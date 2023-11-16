import 'package:flutter/material.dart';
import 'package:streaming_front_app/features/multimedia_related/domain/entities/track.dart';
import 'package:streaming_front_app/features/multimedia_related/presentation/widgets/artist_cover_widget.dart';
import 'package:streaming_front_app/features/multimedia_related/presentation/widgets/complex_track_list_element.dart';
import 'package:streaming_front_app/features/multimedia_related/presentation/widgets/player_bar_widget.dart';
import 'package:streaming_front_app/features/user_related/presentation/widgets/default_background.dart';

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
    'Artist 1': 'assets/images/image.jpg',
    'Artist 2': 'assets/images/image.jpg',
    'Artist 3': 'assets/images/image.jpg',
    'Artist 4': 'assets/images/image.jpg',
  };

  List<Track> songs = [
    Track(
      'Track 1',
      'Artist 1',
      'https://picsum.photos/50/50',
      3.00,
    ),
    Track(
      'Track 2',
      'Artist 2',
      'https://picsum.photos/50/50',
      3.00,
    ),
  ];

  Widget nameRow(String rowName) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.symmetric(vertical: 10),
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
                    actions: [
                      IconButton(
                        icon: const Icon(Icons.search),
                        color: Colors.white,
                        onPressed: () {
                          setState(() {});
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.more_vert),
                        color: Colors.white,
                        onPressed: () {
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
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
                  nameRow('Artistas Trending'),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          for (var element in artists.entries)
                            Container(
                              height: 150,
                              child: ArtistCoverWidget(
                                artistImage: AssetImage(element.value),
                                artistName: element.key,
                              ),
                            )
                        ],
                      )),
                  nameRow('Tracklist'),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        for (var element in songs)
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            height: 70,
                            child: TrackListElement2(element),
                          )
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  PlayerBar(
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
