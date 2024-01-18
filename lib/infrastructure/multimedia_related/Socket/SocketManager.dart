import 'dart:async';
import 'dart:typed_data';
import 'package:get_it/get_it.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:streaming_front_app/infrastructure/core/util/local_storage_instance.dart';

class SocketManager {
  IO.Socket? socket;
  final _streamController = StreamController<Uint8List>.broadcast();

  // Buffers & Song related
  bool isProcessingQueue = false;
  bool isUpdating = false;
  List<Uint8List> bufferQueue = [];
  bool isConnected = false;
  Stream<Uint8List> get dataStream => _streamController.stream;

  SocketManager() {
    connectSocket();
  }

  late Completer<void> _socketConnectedCompleter;

  void connectSocket() async {
    _socketConnectedCompleter = Completer<void>();
    String? token = await getToken();
    try {
      socket = socket = IO.io(
          'http://streaming-api.eastus.azurecontainer.io:3000',
          <String, dynamic>{
            'transports': ['websocket'],
            'auth': {
            'token': token,
            },
          });
      addlisteners();
    } catch (e) {
      print('Error al conectar el socket: $e');
    }
  }

  Future<String?> getToken() async {
    GetIt getIt = GetIt.I;
    final localStorage = getIt<LocalStorageInstance>().getLocalStorage();
    String? token = await localStorage.getItem('token');
    String? guestToken = await localStorage.getItem('lastGuestToken');
    return (token != null) ? token : guestToken as String;
  }

  Future<void> requestSongToServer(String currentSongid) async {
    // Espera a que el socket se conecte
    await _socketConnectedCompleter.future;

    // Verifica si el socket está conectado antes de enviar la solicitud
    if (socket?.connected ?? false) {
      try {
        // Envía la solicitud al servidor con los parámetros dados
        socket?.emit('message-from-client', {
          'songId': currentSongid,
          'second': 0,
        });
        print('Mensaje enviado al servidorc con songId: $currentSongid');
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
      isConnected = true;
      _socketConnectedCompleter.complete();
    });

    socket?.onDisconnect((_) {
      print('Desconectado del servidor del Socket.');
      isConnected = false;
    });

    socket?.on('message-from-server', (payload) async {
      if (payload is Map && payload.containsKey('chunk')) {
        var chunkData = payload['chunk'];

        if (chunkData is Uint8List) {
          // Si chunkData es de tipo Uint8List, procesa los datos
          bufferQueue.add(chunkData);

          if (!isProcessingQueue) {
            isProcessingQueue = true;
            processBuffers();
          }
        } else {
          print('El chunk recibido no es de tipo Uint8List o está vacío');
          // Manejo de casos donde chunkData no es Uint8List o está vacío
        }
      } else {
        print('Payload error o falta el campo "chunk"');
      }
    });
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

  void dispose() {
    _streamController.close();
    socket?.dispose();
  }

  void disconnectSocket() {
    socket?.disconnect();
  }
}
