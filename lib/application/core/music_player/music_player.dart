import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streaming_front_app/infrastructure/multimedia_related/Socket/AudioPlayerManager.dart';

part 'music_player.g.dart';

@Riverpod(keepAlive: true)
class MusicPlayer extends _$MusicPlayer {
  @override
  AudioPlayerManager? build() {
    return null;
  }

  void createNewPlayer({
    required List<String> songsList,
  }) {
    // TODO HERE THE USER STATE CAN BE READED
    bool preview = false;
    state = AudioPlayerManager(songsList, preview);
  }
}
