import 'dart:async';
import 'dart:typed_data';
import 'package:socket_io_client/socket_io_client.dart' as IO;


class SocketManager {
  IO.Socket? socket;
  final _streamController = StreamController<Uint8List>.broadcast();

  // Buffers & Song related
  bool isProcessingQueue = false;
  bool isUpdating=false;
  List<Uint8List> bufferQueue = [];
  bool isConnected=false;
  Stream<Uint8List> get dataStream => _streamController.stream;

  SocketManager() {
    connectSocket();
  }

  late Completer<void> _socketConnectedCompleter;

  void connectSocket() {
      _socketConnectedCompleter = Completer<void>();
      try {
        socket = IO.io('http://streaming-api.eastus.azurecontainer.io:3000', <String, dynamic>{
          'transports': ['websocket'],
        });
        addlisteners();
      } catch (e) {
          print('Error al conectar el socket: $e');
      }
  }

  Future<void> requestSongToServer(String currentSongid, bool preview) async {
      // Espera a que el socket se conecte
      await _socketConnectedCompleter.future;

      // Verifica si el socket está conectado antes de enviar la solicitud
      if (socket?.connected ?? false) {
          try {
              // Envía la solicitud al servidor con los parámetros dados
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
  void imprimirLista(List<int> lista) {
  for (int numero in lista) {
    print(numero);
  }
}
}