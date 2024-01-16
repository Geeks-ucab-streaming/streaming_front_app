import 'dart:typed_data';

import 'package:just_audio/just_audio.dart';
import 'SocketManager.dart';
import 'FragmentedAudioSource.dart';

class AudioPlayerManager {
  AudioPlayer _player = AudioPlayer();
  late SocketManager socket = SocketManager();
  late FragmentedAudioSource _fragmentedAudioSource;

  // InfoProvided related
  late List<String> songsList;
  late String currentSongid;
  late bool preview;

  AudioPlayerManager() {
    startPlayer();
  }

  void startPlayer() {
    _fragmentedAudioSource = FragmentedAudioSource();
    _player.setAudioSource(_fragmentedAudioSource);
    startListening(socket.dataStream);
  }

  void startListening(Stream<Uint8List> stream) {
    stream.listen(
      (chunk) async {
        _fragmentedAudioSource.addChunk(chunk);
      },
      onError: (error) => print('Error: $error'),
    );
  }

  void playSong() async {
    try {
      await _player.play();
    } on Exception catch (e) {
      print("Fail: $e");
    }
  }

  void pauseSong() async {
    try {
      await _player.pause();
    } on Exception catch (e) {
      print("Fail: $e");
    }
  }

  Future<void> stopSong() async {
    try {
      await _player.stop();
    } on Exception catch (e) {
      print("Fail: $e");
    }
  }

  Future<void> dispose() async {
    try {
      await _player.dispose();
    } on Exception catch (e) {
      print("Fail: $e");
    }
  }

  Future<void> nextSongSaftely() async {
    try {
      // Incrementar el índice de la canción circularmente
      String nextSongId = nextElementCircular();

      // Vaciar y resetear el player
      await _player.stop();
      await _player.seek(Duration.zero);
      _fragmentedAudioSource.clear();
      // Solicitar la nueva canción al servidor
      socket.requestSongToServer(nextSongId, preview);

      // Opcional: iniciar la reproducción automáticamente
      await _player.play();
    } catch (e) {
      print('Error al cambiar a la siguiente canción: $e');
    }
  }

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

  Future<void> previousSongSaftely() async {
    try {
      // Incrementar el índice de la canción circularmente
      String nextSongId = previousElementCircular();

      // Vaciar y resetear el player
      await _player.stop();
      await _player.seek(Duration.zero);
      _fragmentedAudioSource
          .clear(); // Asegúrate de que tu StreamAudioSource tenga un método clear

      // Solicitar la nueva canción al servidor
      socket.requestSongToServer(nextSongId, preview);

      // Opcional: iniciar la reproducción automáticamente
      await _player.play();
    } catch (e) {
      print('Error al cambiar a la siguiente canción: $e');
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
}
