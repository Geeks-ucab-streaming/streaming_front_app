import 'dart:typed_data';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../application/auth/states/states.dart';
import '../../../../application/multimedia_related/use_cases/use_cases.dart';
import '../../../../domain/auth/enums/enums.dart';
import '../../../../infrastructure/core/util/util.dart';
import '../../core/widgets/widgets.dart';
import '../widgets/widgets.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // provider to listen
    final homeInfo = ref.watch(getHomeInfoProvider);
    final authState = ref.watch(authProvider);

    final homeBodyWidget = switch (homeInfo) {
      AsyncData(:final value) => Column(
          children: [
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
            switch (authState.state) {
              AuthStateEnum.initialize => Container(),
              AuthStateEnum.authenticated => Container(),
              AuthStateEnum.unauthenticated => InkWell(
                  onTap: () {
                    context.push('/login');
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    margin: const EdgeInsets.only(top: 25, bottom: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: AssetImage(
                              HomeRandomSubscriptionGetter
                                  .getRandomImageAsset(),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                        height: 120,
                      ),
                    ),
                  ),
                ),
            },
            nameRow('Playlist'),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              margin: const EdgeInsets.all(0),
              child: GridView.count(
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                childAspectRatio: 1.8,
                children: [
                  for (var playlist in value.playlists)
                    GestureDetector(
                      onTap: () => context.goNamed('playlist',
                          pathParameters: {'playlistId': playlist.id}),
                      child: Container(
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
                    ),
                ],
              ),
            ),
            nameRow('Aqustico Experience'),
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  viewportFraction: 0.4,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.4,
                  //onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
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
            nameRow('Artistas Trending'),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (var artist in value.artists)
                    InkWell(
                      onTap: () => context.goNamed(
                        'artist',
                        pathParameters: {'artistId': artist.id},
                      ),
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
            nameRow('Tracklist'),
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
            const SizedBox(height: 25),
            const PlayerBar(
              songName: 'Song 1',
              artistName: 'Artist 1',
            ),
          ],
        ),
      AsyncError(:final error) => ErrorImage(
          error: error,
        ),
      _ => const Loading()
    };

    return Scaffold(
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
                    iconTheme: const IconThemeData(color: Colors.white),
                    actions: [
                      IconButton(
                        icon: const Icon(Icons.search),
                        color: Colors.white,
                        onPressed: () {
                          context.goNamed('search');
                        },
                      ),
                      PopupMenuButton<int>(
                        onSelected: (item) =>
                            ThreeDotsMenuGetter.getMenuHandler(ref: ref)(
                          context: context,
                          item: item,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ),
                        itemBuilder: (context) =>
                            ThreeDotsMenuGetter.getMenu(ref: ref),
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
