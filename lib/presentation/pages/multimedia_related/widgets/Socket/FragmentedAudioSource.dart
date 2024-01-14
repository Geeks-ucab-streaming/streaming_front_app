import 'dart:async';
import 'package:just_audio/just_audio.dart';
import 'dart:typed_data';

class FragmentedAudioSource extends StreamAudioSource {
  final StreamController<Uint8List> _streamController = StreamController<Uint8List>.broadcast();

  void addChunk(Uint8List chunk) {
    _streamController.add(chunk);
  }

  @override
  Future<StreamAudioResponse> request([int? start, int? end]) async {
    return StreamAudioResponse(
      sourceLength: null, // Desconocido si es un stream en vivo
      contentLength: null,
      offset: start ?? 0,
      contentType: 'audio/mpeg', // Asegúrate de que sea el tipo correcto para tus datos
      stream: _streamController.stream,
    );
  }

  void dispose() {
    _streamController.close();
  }
}
