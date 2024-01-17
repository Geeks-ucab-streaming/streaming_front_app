import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_song_on_player.g.dart';

// Current Song Playing
class CurrentSong {
  CurrentSong({
    this.id = '',
    this.name = '',
    this.artists = '',
  });

  String? id;
  String? name;
  String? artists;

  String getId() {
    return id as String;
  }

  String getName() {
    return name as String;
  }

  String getArtists() {
    return artists as String;
  }
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
    required String artists,
  }) {
    state = CurrentSong(
      id: id,
      name: name,
      artists: artists,
    );

    // refresh widgets listening to him
    ref.notifyListeners();
  }

  CurrentSong getState() {
    return state;
  }

  String getId() {
    return state.getId();
  }

  String getName() {
    return state.getName();
  }

  String getArtists() {
    return state.getArtists();
  }

  void clearState() {
    state = CurrentSong();
  }
}
