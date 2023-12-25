// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:just_audio/just_audio.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:path_provider/path_provider.dart';

class AudioPlayerHandler {
  IO.Socket? socket;
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;

  // InfoProvided related
  List<String> songsList;
  late String currentSongid;
  bool preview;

  // Buffers & Song related
  late Directory tempDir;
  late String filePath;
  bool isProcessingQueue = false;
  bool isUpdating=false;
  List<Uint8List> bufferQueue = [];

  AudioPlayerHandler(this.songsList, this.preview) {
    currentSongid = songsList.isNotEmpty ? songsList[0] : ''; // Puedes asignar un valor predeterminado aquí
    _initTempDir().then((_) {
      filePath = '${tempDir.path}/$currentSongid.mp3';
      connectSocket();
    });
  }

  Future<void> _initTempDir() async {
    tempDir = await getTemporaryDirectory();
  }

  void connectSocket() {
    try {
      socket = IO.io('http://streaming-api.eastus.azurecontainer.io:3000',
          <String, dynamic>{
            'transports': ['websocket'],
          });
      addlisteners();
    } catch (e) {
      print('Error al establecer la conexión con el servidor del Socket: $e');
    }

  }

  void requestSongToServer() {
    if (socket?.connected ?? false) {
      File(filePath).delete();
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
  
  void addlisteners() {
    
      socket?.onConnect((_) {
        print('Conectado al servidor del Socket de manera exitosa.');
        requestSongToServer();
      });

      socket?.onDisconnect((_) {
        print('Desconectado del servidor del Socket.');
      });
      
      socket?.on('message-from-server', (payload) async {
        print('Nuevo chunk recibido del servidor');
        // Recibir y procesar el payload
        
        if (payload is Map && payload.containsKey('chunk')) {
          Uint8List chunkData = payload['chunk'] as Uint8List;
          bufferQueue.add(chunkData);
        
          if (!isProcessingQueue) {
            isProcessingQueue = true;
            processBuffers();
          }
        } else {
          print('Payload error');
        }
      }
    );
  }
  
  void processBuffers() async {
      while (bufferQueue.isNotEmpty) {
        Uint8List buffer = bufferQueue.removeAt(0);
        if (!isUpdating) {
          isUpdating = true;
          print('Sending feed');
          await feedPlayerFile(buffer);
        }
    }
    isProcessingQueue = false;
  }
  
  Future<void> feedPlayerFile(buffer) async {
    try {
      if (!await File(filePath).exists()) {
        await File(filePath).create();
      }
      if (isUpdating) {
        print("Feeding...");
        await File(filePath).writeAsBytes(buffer, mode: FileMode.append);
        print('Uint8List guardado como archivo MP3 en: $filePath');
        isUpdating = false;
      }
    } on Exception catch (e) {
      print("Feeding fail: $e");
    }
  }

  Future<void> _playAudioFromTempFile() async {
    try{
        if (!isPlaying) {
        await _audioPlayer.setFilePath('${tempDir.path}/$currentSongid.mp3');
        await _audioPlayer.play();
        isPlaying = true;
      }
    }catch(e){
      print('Error al reproducir el archivo MP3: $e');
    }
  }

  void playSong() {
    try {
      _playAudioFromTempFile();
      
    } on Exception catch (e) {
      print("Fail: $e");
    }
  }

  void pauseSong() {
    if (isPlaying) {
      _audioPlayer.pause();
    }
  }

  void stopSong() {
    if (isPlaying) {
      _audioPlayer.stop();
      isPlaying = false;
    }
  }
  
  
}

