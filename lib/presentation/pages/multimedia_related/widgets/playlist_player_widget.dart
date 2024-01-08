import 'package:flutter/material.dart';

class PlaylistPlayer extends StatefulWidget{

  const PlaylistPlayer({
    Key? key,
  }) : super(key: key);

  @override
  _PlaylistPlayerState createState() => _PlaylistPlayerState();
}

class _PlaylistPlayerState extends State<PlaylistPlayer> {
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(1, 54, 52, 52),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
              color: const Color.fromARGB(
                  0, 33, 212, 243), // Color de fondo circular
            ),
            child: IconButton(
              icon: Icon(
                isPlaying ? Icons.pause : Icons.play_arrow,
              ),
              iconSize: 25,
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
              Placeholder(
                fallbackHeight: 50,
                fallbackWidth: 250,
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.replay_10_rounded),
                    iconSize: 30,
                    color: Colors.white,
                    onPressed: () {
                      // Handle previous song logic
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.forward_30_rounded),
                    iconSize: 30,
                    color: Colors.white,
                    onPressed: () {
                      // Handle previous song logic
                    },
                  ),
                  const ShuffleButton(),
                  Container(
                    height: 30.0,
                    width: 30.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.volume_up_rounded),
                    iconSize: 30,
                    color: Colors.white,
                    onPressed: () {
                    },
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ShuffleButton extends StatefulWidget {

  const ShuffleButton({
    Key? key,
  }) : super(key: key);

  @override
  _ShuffleButtonState createState() => _ShuffleButtonState();
}

class _ShuffleButtonState extends State<ShuffleButton> {
  bool isShuffle = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isShuffle ? Icons.shuffle_on_outlined : Icons.shuffle
      ),
      iconSize: 30,
      color: Colors.white,
      onPressed: () {
        setState((){
          isShuffle = !isShuffle;
        });
      },
    );
  }
}