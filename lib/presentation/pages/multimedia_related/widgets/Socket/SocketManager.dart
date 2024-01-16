import 'dart:async';
import 'dart:typed_data';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketManager {
  // Socket related
  IO.Socket? socket;
  late Completer<void> _socketConnectedCompleter;

  // Stream related
  final StreamController<Uint8List> _streamController = StreamController<Uint8List>.broadcast();
  Stream<Uint8List> get dataStream => _streamController.stream;

  // Buffers & Song related
  bool isProcessingQueue = false;
  bool isUpdating = false;
  final List<Uint8List> bufferQueue = [];
  bool isConnected = false;

  SocketManager() {
    connectSocket();
  }

  Future<void> connectSocket() async {
    _socketConnectedCompleter = Completer<void>();
    try {
      socket = IO.io(
        'http://streaming-api.eastus.azurecontainer.io:3000',
        <String, dynamic>{
          'transports': ['websocket'],
        },
      );
      _initializeListeners();
    } catch (e) {
      print('Error al conectar el socket: $e');
    }
  }

  Future<void> requestSongToServer(String currentSongid, bool preview) async {
    await _waitForSocketConnection();
    _sendMessageToServer(currentSongid, preview);
  }

  Future<void> _waitForSocketConnection() async {
    await _socketConnectedCompleter.future;
  }

  void _sendMessageToServer(String currentSongid, bool preview) {
    if (socket?.connected ?? false) {
      try {
        socket?.emit('message-from-client', {
          'preview': preview,
          'songId': currentSongid,
          'second': 0,
        });
        print('Mensaje enviado al servidor con preview: $preview y songId: $currentSongid');
      } catch (e) {
        print('Error al enviar el mensaje al servidor: $e');
      }
    } else {
      print('El socket no está conectado');
    }
  }

  void _initializeListeners() {
    socket?.onConnect((_) {
      print('Conectado al servidor del Socket de manera exitosa.');
      isConnected = true;
      _socketConnectedCompleter.complete();
    });

    socket?.onDisconnect((_) {
      isConnected = false;
    });

    socket?.on('message-from-server', (payload) async {
      _processServerMessage(payload);
    });
  }

  void _processServerMessage(dynamic payload) {
    if (payload is Map && payload.containsKey('chunk')) {
      var chunkData = payload['chunk'];
      if (chunkData is Uint8List) {
        bufferQueue.add(chunkData);
        if (!isProcessingQueue) {
          isProcessingQueue = true;
          processBuffers();
        }
      } else {
        print('El chunk recibido no es de tipo Uint8List o está vacío');
      }
    } else {
      print('Payload error o falta el campo "chunk"');
    }
  }

  void processBuffers() async {
    while (bufferQueue.isNotEmpty) {
      Uint8List buffer = bufferQueue.removeAt(0);
      if (!isUpdating) {
        isUpdating = true;
        await feedSource(buffer);
      }
    }
    isProcessingQueue = false;
  }

  Future<void> feedSource(Uint8List buffer) async {
    try {
      if (isUpdating) {
        print('Feeding...');
        isUpdating = false;
        _streamController.sink.add(buffer);
      }
    } on Exception catch (e) {
      print("Feeding fail: $e");
    }
  }
}
