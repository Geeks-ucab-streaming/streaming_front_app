import 'package:flutter/material.dart';

class PlayerBar extends StatefulWidget {
  final String songName;
  final String artistName;

  const PlayerBar({
    Key? key,
    required this.songName,
    required this.artistName,
  }) : super(key: key);

  @override
  _PlayerBarState createState() => _PlayerBarState();
}

class _PlayerBarState extends State<PlayerBar> {
  bool isPlaying = false;
  String currentTime = '00:00';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 54, 52, 52),
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(
                  255, 33, 212, 243), // Color de fondo circular
            ),
            child: IconButton(
              icon: Icon(
                isPlaying ? Icons.pause : Icons.play_arrow,
              ),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  isPlaying = !isPlaying;
                  if (isPlaying) {
                    // Start playing
                    // You can update the currentTime here
                  } else {
                    // Pause playing
                  }
                });
              },
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
          Spacer(),
          TimeText(currentTime: currentTime),
          IconButton(
            icon: Icon(Icons.skip_previous),
            color: Colors.white,
            onPressed: () {
              // Handle previous song logic
            },
          ),
          IconButton(
            icon: Icon(Icons.skip_next),
            color: Colors.white,
            onPressed: () {
              // Handle next song logic
            },
          ),
        ],
      ),
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
