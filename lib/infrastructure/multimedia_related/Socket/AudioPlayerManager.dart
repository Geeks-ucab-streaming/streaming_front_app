import 'dart:async';

import 'package:just_audio/just_audio.dart';
import 'SocketManager.dart';
import 'FragmentedAudioSource.dart';

//States
enum AudioPlayerState { playing, paused, stopped, loading, error, dispose }

class AudioPlayerManager {
  AudioPlayer _player = AudioPlayer();
  late SocketManager socket = SocketManager();
  late FragmentedAudioSource _fragmentedAudioSource;

  // InfoProvided related
  late List<String> songsList = [];
  late String currentSongid = '';

  //State stream
  final _stateController = StreamController<AudioPlayerState>.broadcast();
  Stream<AudioPlayerState> get stateStream => _stateController.stream;

  AudioPlayerManager() {
    startPlayer();
  }

  void startPlayer() {
    _fragmentedAudioSource = FragmentedAudioSource();
    _player.setAudioSource(_fragmentedAudioSource);
    _fragmentedAudioSource.startListening(socket.dataStream);
    startListenerNextSong();
  }

  void startListenerNextSong() {
    _player.playerStateStream.listen((state) {
      if (state.processingState == ProcessingState.completed) {
        nextSongSaftely();
      }
    });
  }

  //Funciones basicas

  Future<void> playerOperation(
      Future<void> Function() operation, AudioPlayerState state) async {
    try {
      await operation();
      _stateController
          .add(state); // Actualiza el estado después de la operación
    } on Exception catch (e) {
      print("Fail: $e");
      _stateController
          .add(AudioPlayerState.error); // Actualiza el estado en caso de error
    }
  }

  Future<void> playSong() =>
      playerOperation(_player.play, AudioPlayerState.playing);
  Future<void> pauseSong() =>
      playerOperation(_player.pause, AudioPlayerState.paused);
  Future<void> stopSong() =>
      playerOperation(_player.stop, AudioPlayerState.stopped);
  Future<void> dispose() =>
      playerOperation(_player.dispose, AudioPlayerState.dispose);

  //Funciones de cambio de canción

  Future<void> changeSong(String Function() getNextSongId) async {
    try {
      String nextSongId = getNextSongId();

      // Detener y preparar el player para la nueva canción
      await playerOperation(() async {
        await _player.stop();
        _stateController.add(AudioPlayerState.stopped);
        await _player.seek(Duration.zero);
        _fragmentedAudioSource.clear();
      }, AudioPlayerState.loading);

      // Solicitar la nueva canción al servidor
      socket.requestSongToServer(nextSongId);

      // Reproducir la nueva canción
      await playerOperation(_player.play, AudioPlayerState.playing);
    } catch (e) {
      print('Error al cambiar la canción: $e');
      _stateController.add(AudioPlayerState.error);
    }
  }

  Future<void> nextSongSaftely() async => changeSong(nextElementCircular);
  Future<void> previousSongSaftely() async =>
      changeSong(previousElementCircular);

  //Funciones de la lista de canciones

  Future<void> setPlaylist(List<String> newSongsList) async {
    try {
      _stateController.add(AudioPlayerState.loading); // Emitir estado de carga
      // Vaciar y resetear el player
      await _player.stop();
      await _player.seek(Duration.zero);
      _fragmentedAudioSource.clear();
      // Actualizar valores
      songsList = newSongsList;
      currentSongid = newSongsList.isNotEmpty ? newSongsList[0] : '';
      // Solicitar la nueva canción al servidor
      socket.requestSongToServer(currentSongid);
      _stateController.add(AudioPlayerState.paused);
    } catch (e) {
      print('Error al actualizar la lista: $e');
      _stateController.add(AudioPlayerState.error); // Emitir estado de error
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

  bool isProcessingQueue() {
    return socket.bufferQueue.isNotEmpty;
  }

  void disposeAll() {
    _player.dispose();
    socket.dispose();
    _fragmentedAudioSource.dispose();
  }
}
