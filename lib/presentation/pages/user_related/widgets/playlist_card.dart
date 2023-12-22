import 'package:flutter/material.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({super.key, required this.playlistName, required this.playlistId});

  final String playlistId;
  final String playlistName;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,  
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: InkWell(
        onTap: (){
          //Falta llamar a la vista de playlist
        },
        child: Container(
          width: 175,
          padding: const EdgeInsets.all(10.0),
          color: const Color.fromARGB(255,85,23,191),
          child: Row(
            children: [
              Container(
                width: 95,
                child: Text(
                  playlistName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.playlist_play,
                color: Color.fromARGB(255,254,151,46),
                size: 60,
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}