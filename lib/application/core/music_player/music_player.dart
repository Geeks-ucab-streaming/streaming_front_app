import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infrastructure/multimedia_related/Socket/AudioPlayerManager.dart';
import 'current_song_on_player.dart';

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
    // verify if the socket is loading
    if (state.socket.isUpdating) {
      return;
    }
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
      // set the state of the global current song
      _updateCurrentSongOnPlayerState(
        id: songId,
        name: '',
        artists: [],
      );
    } else if (!state.isPlaying() && state.currentSongid != songId) {
      // song playing is different from the one of the player
      await state.stopSong();
      await state.setPlaylist([songId]);
      await state.playSong();
      // set the state of the global current song
      _updateCurrentSongOnPlayerState(
        id: songId,
        name: '',
        artists: [],
      );
    } else if (!state.hasSongsLoaded()) {
      // player is empty
      await state.setPlaylist([songId]);
      await state.playSong();
      // set the state of the global current song
      _updateCurrentSongOnPlayerState(
        id: songId,
        name: '',
        artists: [],
      );
    }
  }

  Future<void> playPlaylist({
    required List<String> songIds,
    required String playlistId,
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
    } else if (state.socket.bufferQueue.isNotEmpty &&
        state.currentSongid == songId) {
      return Icons.pause;
    } else if (!state.isPlaying() && state.currentSongid == songId) {
      return Icons.play_arrow;
    } else {
      return Icons.play_arrow;
    }
  }

  _updateCurrentSongOnPlayerState({
    required String id,
    required String name,
    required List<String> artists,
  }) {
// set the state of the global current song
    ref.read(currentSongOnPlayerProvider.notifier).clearState();
    ref.read(currentSongOnPlayerProvider.notifier).setState(
      id: id,
      name: '',
      artists: [],
    );
  }
}
