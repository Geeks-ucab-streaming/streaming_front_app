import 'dart:typed_data';

import 'package:just_audio/just_audio.dart';
import 'SocketManager.dart';
import 'FragmentedAudioSource.dart';

class AudioPlayerManager {
  AudioPlayer _player = AudioPlayer();
  late SocketManager socket = SocketManager();
  late FragmentedAudioSource _fragmentedAudioSource;

  // InfoProvided related
  late List<String> songsList = [];
  late String currentSongid = '';
  late bool preview;

  AudioPlayerManager() {
    startPlayer();
  }

  void startPlayer() {
    _fragmentedAudioSource = FragmentedAudioSource();
    _player.setAudioSource(_fragmentedAudioSource);
    startListening(socket.dataStream);
    startListenerNextSong();
  }

  void startListening(Stream<Uint8List> stream) {
    stream.listen(
      (chunk) async {
        _fragmentedAudioSource.addChunk(chunk);
      },
      onError: (error) => print('Error: $error'),
    );
  }

  void startListenerNextSong() {
    _player.playerStateStream.listen((state) {
      if (state.processingState == ProcessingState.completed) {
        nextSongSaftely();
      }
    });
  }

  //Funciones basicas

  Future<void> playerOperation(Future<void> Function() operation) async {
    try {
      await operation();
    } on Exception catch (e) {
      print("Fail: $e");
    }
  }

  Future<void> playSong() => playerOperation(_player.play);
  Future<void> pauseSong() => playerOperation(_player.pause);
  Future<void> stopSong() => playerOperation(_player.stop);
  Future<void> dispose() => playerOperation(_player.dispose);

  //Funciones de cambio de canción

  Future<void> changeSong(String Function() getNextSongId) async {
    try {
      String nextSongId = getNextSongId();
      await playerOperation(() async {
        await _player.stop();
        await _player.seek(Duration.zero);
        _fragmentedAudioSource.clear();
      });
      socket.requestSongToServer(nextSongId, preview);
      await playerOperation(_player.play);
    } catch (e) {
      print('Error al cambiar la canción: $e');
    }
  }

  Future<void> nextSongSaftely() async => changeSong(nextElementCircular);
  Future<void> previousSongSaftely() async =>
      changeSong(previousElementCircular);

  Future<void> setPlaylist(List<String> newSongsList, bool preview) async {
    try {
      // Vaciar y resetear el player
      await _player.stop();
      await _player.seek(Duration.zero);
      _fragmentedAudioSource.clear();
      // Actualizar valores
      songsList = newSongsList;
      currentSongid = newSongsList.isNotEmpty ? newSongsList[0] : '';
      // Solicitar la nueva canción al servidor
      socket.requestSongToServer(currentSongid, preview);
    } catch (e) {
      print('Error al actualizar la lista: $e');
    }
  }

  String nextElementCircular() {
    if (songsList.isEmpty) {
      throw ArgumentError("La lista songsList no puede estar vacía.");
    }

    int currentIndex = songsList.indexOf(currentSongid);
    currentIndex = (currentIndex + 1) % songsList.length;
    currentSongid = songsList[currentIndex];

    return currentSongid;
  }

  String previousElementCircular() {
    if (songsList.isEmpty) {
      throw ArgumentError("La lista songsList no puede estar vacía.");
    }

    int currentIndex = songsList.indexOf(currentSongid);
    // Asegurarse de que el índice es positivo antes de aplicar el módulo
    currentIndex = (currentIndex - 1 + songsList.length) % songsList.length;
    currentSongid = songsList[currentIndex];

    return currentSongid;
  }

  bool isPlaying() {
    return _player.playing;
  }

  bool hasSongsLoaded() {
    return songsList.isNotEmpty;
  }

  void clearSongList() {
    songsList.clear();
    currentSongid = '';
  }
}
