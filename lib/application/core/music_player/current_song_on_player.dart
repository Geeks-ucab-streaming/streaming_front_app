import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_song_on_player.g.dart';

// Current Song Playing
class CurrentSong {
  CurrentSong({
    this.id,
    this.name,
    this.artists,
  });

  String? id = '';
  String? name = '';
  List<String>? artists = [];
}

@Riverpod(keepAlive: true)
class CurrentSongOnPlayer extends _$CurrentSongOnPlayer {
  @override
  CurrentSong build() {
    return CurrentSong();
  }

  void setState({
    required String id,
    required String name,
    required List<String> artists,
  }) {
    state = CurrentSong(
      id: id,
      name: name,
      artists: artists,
    );
  }

  void clearState() {
    state = CurrentSong();
  }
}
