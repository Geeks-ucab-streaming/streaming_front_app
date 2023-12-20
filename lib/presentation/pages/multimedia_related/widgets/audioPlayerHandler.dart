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
      saveBufferToMp3(audioBuffer, 'assets/music/temporary_audio.mp3').then((filePath) {
        playSong(filePath);
      }).catchError((error) {
        // Manejar el error si falla la creación del archivo
      });
    });
  }

  Future<String> saveBufferToMp3(Uint8List buffer, String filePath) async {
    final completer = Completer<String>();
    final tempFile = File(filePath);

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
    final currentIndex = songsList.indexOf(currentSongid);
    final nextIndex = (currentIndex + 1) % songsList.length; // Obtiene el índice de la siguiente canción circularmente

    currentSongid = songsList[nextIndex];
    getSong(currentSongid);
  }

  void previousSong() {
    final currentIndex = songsList.indexOf(currentSongid);
    final previousIndex =
        currentIndex - 1 < 0 ? songsList.length - 1 : currentIndex - 1; // Obtiene el índice de la canción anterior circularmente

    currentSongid = songsList[previousIndex];
    getSong(currentSongid);
  }

  void pauseSong() {
    audioPlayer.pause();
    isPlaying = false;
  }

 

  // Resto de la implementación de la clase...
}