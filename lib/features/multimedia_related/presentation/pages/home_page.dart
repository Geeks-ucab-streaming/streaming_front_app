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
    'Tradicional  ` venezolana',
    'Pop Latino',
    'Alternativo',
    'Urbana',
  ];

  Map<String, String> artists = {
    'Artist 1': 'images/image.jpg',
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
    return Row(
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
            Padding(
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppBar(
                      backgroundColor: Colors.transparent,
                      actions: [
                        IconButton(
                          icon: const Icon(Icons.more_vert),
                          color: Colors.white,
                          onPressed: () {
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        'https://picsum.photos/400/300',
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    const SizedBox(height: 25),
                    nameRow('Playlist'),
                    GridView.count(
                      shrinkWrap: true,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: [
                        for (var element in playlists)
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  'https://picsum.photos/200/200',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  element,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                      ],
                    ),
                    nameRow('Aqustico Experience'),
                    nameRow('Artistas Trending'),
                    Container(
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
                      child: Column(
                        children: [
                          for (var element in songs)
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              height: 60,
                              child: TrackListElement2(element),
                            )
                        ],
                      ),
                    ),
                    PlayerBar(
                      songName: 'Song 1',
                      artistName: 'Artist 1',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
