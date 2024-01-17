import 'dart:async';
import 'package:just_audio/just_audio.dart';
import 'dart:typed_data';

class FragmentedAudioSource extends StreamAudioSource {
  StreamController<Uint8List> _streamController = StreamController<Uint8List>.broadcast();

  void addChunk(Uint8List chunk) {
    _streamController.add(chunk);
  }

  void startListening(Stream<Uint8List> stream) {
    stream.listen(
      (chunk) async {
        addChunk(chunk);
      },
      onError: (error) => print('Error: $error'),
    );
  }

  @override
  Future<StreamAudioResponse> request([int? start, int? end]) async {
    return StreamAudioResponse(
      sourceLength: null, // Desconocido si es un stream en vivo
      contentLength: null,
      offset: start ?? 0,
      contentType: 'mp3/raw',
      stream: _streamController.stream,
    );
  }
    void clear() {
    // Cierra el StreamController actual y crea uno nuevo
    _streamController.close();
    _streamController = StreamController<Uint8List>();
  }

  void dispose() {
    _streamController.close();
  }
}
