// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_playlist_info.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getPlaylistInfoHash() => r'580b92c1ef96e2c6e0060b1e30fbe01b6aa7e5c6';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getPlaylistInfo].
@ProviderFor(getPlaylistInfo)
const getPlaylistInfoProvider = GetPlaylistInfoFamily();

/// See also [getPlaylistInfo].
class GetPlaylistInfoFamily
    extends Family<AsyncValue<PlaylistPagePresentation>> {
  /// See also [getPlaylistInfo].
  const GetPlaylistInfoFamily();

  /// See also [getPlaylistInfo].
  GetPlaylistInfoProvider call(
    String playlistId,
  ) {
    return GetPlaylistInfoProvider(
      playlistId,
    );
  }

  @override
  GetPlaylistInfoProvider getProviderOverride(
    covariant GetPlaylistInfoProvider provider,
  ) {
    return call(
      provider.playlistId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getPlaylistInfoProvider';
}

/// See also [getPlaylistInfo].
class GetPlaylistInfoProvider
    extends AutoDisposeFutureProvider<PlaylistPagePresentation> {
  /// See also [getPlaylistInfo].
  GetPlaylistInfoProvider(
    String playlistId,
  ) : this._internal(
          (ref) => getPlaylistInfo(
            ref as GetPlaylistInfoRef,
            playlistId,
          ),
          from: getPlaylistInfoProvider,
          name: r'getPlaylistInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPlaylistInfoHash,
          dependencies: GetPlaylistInfoFamily._dependencies,
          allTransitiveDependencies:
              GetPlaylistInfoFamily._allTransitiveDependencies,
          playlistId: playlistId,
        );

  GetPlaylistInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.playlistId,
  }) : super.internal();

  final String playlistId;

  @override
  Override overrideWith(
    FutureOr<PlaylistPagePresentation> Function(GetPlaylistInfoRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPlaylistInfoProvider._internal(
        (ref) => create(ref as GetPlaylistInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        playlistId: playlistId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PlaylistPagePresentation> createElement() {
    return _GetPlaylistInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPlaylistInfoProvider && other.playlistId == playlistId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, playlistId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetPlaylistInfoRef
    on AutoDisposeFutureProviderRef<PlaylistPagePresentation> {
  /// The parameter `playlistId` of this provider.
  String get playlistId;
}

class _GetPlaylistInfoProviderElement
    extends AutoDisposeFutureProviderElement<PlaylistPagePresentation>
    with GetPlaylistInfoRef {
  _GetPlaylistInfoProviderElement(super.provider);

  @override
  String get playlistId => (origin as GetPlaylistInfoProvider).playlistId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
