import 'dart:typed_data';

import 'package:just_audio/just_audio.dart';
import 'package:streaming_front_app/presentation/pages/multimedia_related/widgets/Socket/SocketManager.dart';
import 'package:streaming_front_app/presentation/pages/multimedia_related/widgets/Socket/FragmentedAudioSource.dart';

class AudioPlayerManager {
  AudioPlayer _player = AudioPlayer();
  late SocketManager socket  = SocketManager();
  late FragmentedAudioSource _fragmentedAudioSource;
  
  // InfoProvided related
  List<String> songsList;
  late String currentSongid;
  bool preview;

  AudioPlayerManager(this.songsList, this.preview) {
    currentSongid = songsList.isNotEmpty ? songsList[0] : '';
    StartPLayer();
  }

  void StartPLayer(){
    _fragmentedAudioSource = FragmentedAudioSource();
    _player.setAudioSource(_fragmentedAudioSource);
    startListening(socket.dataStream);
    socket.requestSongToServer(currentSongid, preview);
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

  Future<void> nextSongSafely() async {
    try {
      // Calcular el índice de la próxima canción circularmente
      int currentIndex = songsList.indexOf(currentSongid);
      int nextIndex = (currentIndex + 1) % songsList.length;
      currentSongid = songsList[nextIndex];

      // Detener la reproducción actual y limpiar el buffer
      if (_player.playing) {
        await _player.stop();
      }

      // Verificar la conexión del socket antes de solicitar la nueva canción
      if (!socket.isConnected) {
        print('El socket no está conectado. Reconectando...');
        socket.connectSocket(); // Asumiendo que tienes un método para reconectar
      }

      // Solicitar la nueva canción al servidor
      socket.requestSongToServer(currentSongid, preview);

      // Esperar a que la fuente de audio esté lista antes de reproducir
      await Future.delayed(Duration(seconds: 1)); // Ajusta este tiempo según sea necesario

      // Reproducir la nueva canción
      await _player.play();
    } catch (e) {
      print("Error al cambiar a la siguiente canción: $e");
    }
  }

}
