import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streaming_front_app/infrastructure/multimedia_related/Socket/AudioPlayerManager.dart';

part 'music_player.g.dart';

@Riverpod(keepAlive: true)
class MusicPlayer extends _$MusicPlayer {
  @override
  AudioPlayerManager build() {
    return AudioPlayerManager();
  }

  void createNewPlayer({
    required List<String> songsList,
  }) {
    state = AudioPlayerManager();
  }

  Future<void> playOnlySong({
    required String songId,
  }) async {
    if (state.isPlaying() && state.currentSongid == songId) {
      // song playing is the same of the player and it is playing so pause it
      await state.pauseSong();
    } else if (!state.isPlaying() && state.currentSongid == songId) {
      // song playing is the same of the player and it is not playing so play it
      await state.playSong();
    } else if (state.isPlaying() && state.currentSongid != songId) {
      // song playing is different from the one of the player
      await state.stopSong();
      await state.setPlaylist([songId]);
      await state.playSong();
    } else if (!state.hasSongsLoaded()) {
      // player is empty
      await state.setPlaylist([songId]);
      await state.playSong();
    }
  }

  Future<void> playPlaylist({
    required List<String> songIds,
  }) async {
    // TODO manage the stop method

    if (state.isPlaying()) {
      await state.stopSong();
    }

    await state.setPlaylist(songIds);
    await state.playSong();
  }

  IconData getIconForSingleSong({
    required String songId,
  }) {
    if (state.isPlaying() && state.currentSongid == songId) {
      return Icons.pause;
    } else {
      return Icons.play_arrow;
    }
  }
}
