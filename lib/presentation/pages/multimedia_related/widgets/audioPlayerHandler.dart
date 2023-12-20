import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:just_audio/just_audio.dart';

class AudioPlayerHandler {
  IO.Socket? socket;
  List<String> songsList;
  late String currentSongid;
  AudioPlayer audioPlayer = AudioPlayer();
  bool preview = false;
  bool isPlaying = false;

  AudioPlayerHandler(this.songsList, this.preview) {
    currentSongid = songsList.isNotEmpty ? songsList[0] : '';
    socket = IO.io('http://localhost:3000/socket.io/socket.io.js', {
      'transports': ['websocket'],
    });

    // Resto de la lógica del constructor...
  }

  void getSong(String songId) {
    socket?.emit("message-from-client", {
      'preview': preview,
      'songId': songId
    });

    socket?.on('audioBuffer', (data) {
      Uint8List audioBuffer = data as Uint8List;
      saveBufferToMp3(audioBuffer).then((filePath) {
        playSong(filePath);
      }).catchError((error) {
        // Handle error if file saving fails
      });
    });
  }

  Future<String> saveBufferToMp3(Uint8List buffer) async {
    final completer = Completer<String>();
    final tempFile = File('temporary_audio.mp3');

    await tempFile.writeAsBytes(buffer).then((_) {
      completer.complete(tempFile.path);
    }).catchError((error) {
      completer.completeError(error);
    });
    return completer.future;
  }

  void playSong(String filePath) async {
    final audioPlayer = AudioPlayer();
    await audioPlayer.setFilePath(filePath);
    audioPlayer.play();
  }

  void nextSong() {
    // Lógica para avanzar a la siguiente canción
  }

  void previousSong() {
    // Lógica para retroceder a la canción anterior
  }

  void pauseSong() {
    audioPlayer.pause();
    isPlaying = false;
  }

 

  // Resto de la implementación de la clase...
}