import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:ui';

class ArtistView extends StatefulWidget {
  const ArtistView({super.key, required this.title});

  final String title;

  @override
  State<ArtistView> createState() => _ArtistViewState();
}

class _ArtistViewState extends State<ArtistView> {
  List<CancionesModel> categories = [];

  void _getInitialInfo() {
    categories = CancionesModel.getCanciones();
  }

  CarouselOptions myCarouselOptions = CarouselOptions(
    height: 200.0,
    aspectRatio: 1,
    enableInfiniteScroll: true,
    reverse: false,
    enlargeCenterPage: true,
    enlargeFactor: 0.3,
    viewportFraction: 0.5,
  );

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.topCenter,
          image: AssetImage('assets/images/thisisc418.png'),
          fit: BoxFit.fitWidth,
          colorFilter: ColorFilter.mode(
            Colors.black45,
            BlendMode.dstATop,
          ),
        ),
        gradient: LinearGradient(
          colors: [
            /*Colors.white,
            //Color.fromARGB(255, 42, 25, 94),
            Color.fromARGB(255, 13, 7, 27),
            Color.fromARGB(255, 42, 25, 94),
            Color.fromARGB(255, 57, 25, 130),*/
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
          body: ListView(
            children: <Widget>[
              const ArtistCard(),
              const SizedBox(
                height: 50,
              ),
              myCarousel(myCarouselOptions),
              const SizedBox(
                height: 50,
              ),
              SongList(categories),
            ],
          ),
        ),
      ),
    );
  }
}

class CancionesModel {
  String name;
  String imagePath;

  CancionesModel({
    required this.name,
    required this.imagePath,
  });

  static List<CancionesModel> getCanciones() {
    List<CancionesModel> categories = [];

    categories.add(
      CancionesModel(
        name: 'Septic Shock',
        imagePath: 'assets/images/portada1.png',
      ),
    );

    categories.add(
      CancionesModel(
        name: 'Match Cut',
        imagePath: 'assets/images/portada2.png',
      ),
    );

    categories.add(
      CancionesModel(
        name: 'Post depression',
        imagePath: 'assets/images/portada3.png',
      ),
    );

    categories.add(
      CancionesModel(
        name: 'Leak',
        imagePath: 'assets/images/portada4.png',
      ),
    );

    categories.add(
      CancionesModel(
        name: 'I lack an emotion',
        imagePath: 'assets/images/portada5.png',
      ),
    );

    return categories;
  }
}

class ArtistCard extends StatelessWidget {
  const ArtistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(40.0, 10.0, 20.0, 0.0),
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.width * 0.4,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 10,
                  spreadRadius: 0,
                  offset: Offset(0, 5),
                ),
              ],
              image: DecorationImage(
                image: AssetImage('assets/images/thisisc418.png'),
                fit: BoxFit.fill,
              )),
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'C418',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
                color: Colors.white,
              ),
            ),
            Text(
              'Electrónica',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '5 álbumes',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            Text(
              'Burda de canciones',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

CarouselSlider myCarousel(CarouselOptions myOptions) {
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

Container SongList(List<CancionesModel> categories) {
  return Container(
    width: 400.0,
    height: 300.0,
    child: ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 10.0,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return Container(
          height: 75.0,
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(25, 255, 255, 255),
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 10,
                spreadRadius: 0,
                offset: Offset(0, 0),
                blurStyle: BlurStyle.outer,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  width: 75.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(categories[index].imagePath),
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      categories[index].name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Text(
                      'C418',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    '3:00',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  IconButton(
                    icon: const Icon(Icons.play_arrow),
                    color: Colors.cyanAccent,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        );
      },
    ),
  );
}
