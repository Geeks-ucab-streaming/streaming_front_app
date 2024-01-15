import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';


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
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  bool isLoaded = false;

  Future<void> setAudio() async {
    try {
      final assetPath = 'assets/music/La vela puerca - Zafar.mp3';
    
      if (!isLoaded) { // Verificar si el audio aún no está cargado
        await audioPlayer.setAsset(assetPath);
        isLoaded = true; // Marcar el audio como cargado
      }
    
      audioPlayer.play();
    } catch (e) {
      print('Error al cargar y reproducir el audio: $e');
    }
  }

  
  @override
  void dispose() {
    audioPlayer.dispose();

    super.dispose();
  }

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
                            icon: Icon(
                              isPlaying ? Icons.pause : Icons.play_arrow,
                            ),
                            iconSize: 25,
                            onPressed: () async {
                              if (isPlaying) {
                                await audioPlayer.pause();
                                isPlaying = false; // Actualiza el estado de reproducción
                              } else {
                                await setAudio();
                                isPlaying = true; // Actualiza el estado de reproducción
                              }
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
