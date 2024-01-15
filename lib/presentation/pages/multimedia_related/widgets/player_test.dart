import 'package:flutter/material.dart';
import 'package:streaming_front_app/presentation/pages/multimedia_related/widgets/Socket/AudioPlayerManager.dart';
//import 'package:streaming_front_app/presentation/pages/multimedia_related/widgets/audioPlayerHandler.dart';

const List<String> itemList = [
  'bd5b3250-f05a-49d3-8e62-890e3d8ac063',
  '1a6dcd83-7400-4af4-bd04-733c817f9924',
  'c51ab77e-61d1-44a1-956f-09cd63231e48',
  '773a82f6-13c1-4089-9a69-e869007b3b23'
];

class PlayerBar1 extends StatefulWidget {
  final String songName;
  final String artistName;

  const PlayerBar1({
    Key? key,
    required this.songName,
    required this.artistName,
  }) : super(key: key);

  @override
  _PlayerBarState createState() => _PlayerBarState();
}

class _PlayerBarState extends State<PlayerBar1> {
  final AudioPlayerManager audioPlayerHandler = AudioPlayerManager(itemList, false);
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  bool isLoaded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color.fromARGB(255, 54, 52, 52),
          child: Column(
            children: [
              SliderTheme(
                data: SliderThemeData(
                  thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius:
                          0.0), // Establece el radio del pulgar en 0.0
                ),
                child: Slider(
                    min: 0,
                    max: duration.inSeconds.toDouble(),
                    value: position.inSeconds.toDouble(),
                    onChanged: (value) async {}),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 33, 212, 243),
                      ),
                      child: CircleAvatar(
                        radius: 20,
                        child: Align(
                          alignment: Alignment.center,
                          child: IconButton(
                            icon: Icon(Icons.play_arrow),
                            iconSize: 25,
                            onPressed: () async {   
                              audioPlayerHandler.playSong();
                              setState(() {}); // Actualiza el estado del widget
                            },
                          ),
                        ),
                      )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 33, 212, 243),
                      ),
                      child: CircleAvatar(
                        radius: 20,
                        child: Align(
                          alignment: Alignment.center,
                          child: IconButton(
                            icon: const Icon(Icons.pause_rounded),
                            iconSize: 25,
                            onPressed: () async {
                              audioPlayerHandler.pauseSong(); 
                              setState(() {}); // Actualiza el estado del widget
                            },
                          ),
                        ),
                      )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 33, 212, 243),
                      ),
                      child: CircleAvatar(
                        radius: 20,
                        child: Align(
                          alignment: Alignment.center,
                          child: IconButton(
                            icon: const Icon(Icons.skip_previous_rounded),
                            iconSize: 25,
                            onPressed: () async {
                              audioPlayerHandler.previousSongSaftely(); 
                              setState(() {}); // Actualiza el estado del widget
                            },
                          ),
                        ),
                      )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 33, 212, 243),
                      ),
                      child: CircleAvatar(
                        radius: 20,
                        child: Align(
                          alignment: Alignment.center,
                          child: IconButton(
                            icon: const Icon(Icons.skip_next_rounded),
                            iconSize: 25,
                            onPressed: () async {
                              audioPlayerHandler.nextSongSaftely(); 
                              setState(() {}); // Actualiza el estado del widget
                            },
                          ),
                        ),
                      )
                    ),
                  ),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.songName,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.artistName,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TimeText extends StatefulWidget {
  final String currentTime;

  const TimeText({
    Key? key,
    required this.currentTime,
  }) : super(key: key);

  @override
  _TimeTextState createState() => _TimeTextState();
}

class _TimeTextState extends State<TimeText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.currentTime,
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }
}
