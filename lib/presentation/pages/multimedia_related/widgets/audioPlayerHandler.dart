import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:just_audio/just_audio.dart';
import 'package:path_provider/path_provider.dart';

class AudioPlayerHandler {
  IO.Socket? socket;
  List<String> songsList;
  late String currentSongid;
  AudioPlayer audioPlayer = AudioPlayer();
  bool isPlaying = false;
  bool preview;
  late Directory tempDir;

  AudioPlayerHandler(this.songsList, this.preview) {
    currentSongid = songsList.isNotEmpty ? songsList[0] : '';
    _initTempDir();
    _connectToSocket();
  }

  Future<void> _initTempDir() async {
    tempDir = await getTemporaryDirectory();
  }

  void _connectToSocket() {
    try {
      socket = IO.io('http://streaming-api.eastus.azurecontainer.io:3000',
          <String, dynamic>{
            'transports': ['websocket'],
          });

      socket?.onConnect((_) {
        print('Conectado al servidor del Socket de manera exitosa.');
        sendSongToServer();
      });

      socket?.onDisconnect((_) {
        print('Desconectado del servidor del Socket.');
      });

      socket?.on('message-from-server', (data) async {
        Uint8List chunkData = data['chunk'] as Uint8List;
        await _writeChunkToFile(chunkData);
      });

      socket?.on('song-transfer-complete', (_) {
        print('Transferencia completa, comenzando a reproducir.');
        _playAudioFromTempFile();
      });

    } catch (e) {
      print('Error al establecer la conexión con el servidor del Socket: $e');
    }
  }

  void sendSongToServer() {
    if (socket?.connected ?? false) {
      try {
        socket?.emit('message-from-client', {
          'preview': preview,
          'songId': currentSongid,
        });
        print('Mensaje enviado al servidor con preview: $preview y songId: $currentSongid');
      } catch (e) {
        print('Error al enviar el mensaje al servidor: $e');
      }
    } else {
      print('El socket no está conectado');
    }
  }

  Future<void> _writeChunkToFile(Uint8List chunkData) async {
    String filePath = '${tempDir.path}/$currentSongid.mp3';
    File tempAudioFile = File(filePath);
    if (!await tempAudioFile.exists()) {
      await tempAudioFile.create();
    }
    await tempAudioFile.writeAsBytes(chunkData, mode: FileMode.append);
  }

  void _playAudioFromTempFile() async {
    String filePath = '${tempDir.path}/$currentSongid.mp3';
    if (await File(filePath).exists()) {
      await audioPlayer.setFilePath(filePath);
    } else {
      print('El archivo temporal no existe.');
    }
  }

  void playSong() {
      audioPlayer.play(); 
  }
}
