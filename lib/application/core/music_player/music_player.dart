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
    required String name,
    required String artists,
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
        name: name,
        artists: artists,
      );
    } else if (!state.isPlaying() && state.currentSongid != songId) {
      // song playing is different from the one of the player
      await state.stopSong();
      await state.setPlaylist([songId]);
      await state.playSong();
      // set the state of the global current song
      _updateCurrentSongOnPlayerState(
        id: songId,
        name: name,
        artists: artists,
      );
    } else if (!state.hasSongsLoaded()) {
      // player is empty
      await state.setPlaylist([songId]);
      await state.playSong();
      // set the state of the global current song
      _updateCurrentSongOnPlayerState(
        id: songId,
        name: name,
        artists: artists,
      );
    }

    // refresh widgets listening to him
    ref.notifyListeners();
    await Future(() {});
  }

  Future<void> playPlaylist({
    required List<String> songsIds,
    required String currentSongId,
    required String name,
    required String artists,
  }) async {
    // empty the player and set the playlist
    await state.stopSong();
    await state.setPlaylist(songsIds);
    await state.playSong();
    // set the state of the global current song
    _updateCurrentSongOnPlayerState(
      id: currentSongId,
      name: name,
      artists: artists,
    );

    // refresh widgets listening to him
    ref.notifyListeners();
    await Future(() {});
  }

  Future<void> playNextSong() async {
    // empty the player and set the playlist
    await state.nextSongSaftely();
    _updateCurrentSongOnPlayerState(
      id: state.currentSongid,
      name: '',
      artists: '',
    );
  }

  Future<void> playPreviousSong() async {
    // empty the player and set the playlist
    await state.previousSongSaftely();
    _updateCurrentSongOnPlayerState(
      id: state.currentSongid,
      name: '',
      artists: '',
    );
  }

  IconData getIconForSingleSong({
    required String songId,
  }) {
    if (state.isPlaying() && state.currentSongid == songId) {
      return Icons.pause;
    } else if (state.isProcessingQueue() && state.currentSongid == songId) {
      return Icons.pause;
    } else if (!state.isPlaying() && state.currentSongid == songId) {
      return Icons.play_arrow;
    } else {
      return Icons.play_arrow;
    }
  }

  Stream<AudioPlayerState> exposePlayerState() {
    return state.stateStream;
  }

  void dispose() {
    state.disposeAll();
  }

  _updateCurrentSongOnPlayerState({
    required String id,
    required String name,
    required String artists,
  }) {
// set the state of the global current song
    ref.read(currentSongOnPlayerProvider.notifier).clearState();
    ref.read(currentSongOnPlayerProvider.notifier).setState(
          id: id,
          name: name,
          artists: artists,
        );
  }
}
