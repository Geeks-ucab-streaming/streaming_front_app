// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_album_info.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getAlbumInfoHash() => r'8720445d0823de78f01b1522821823f824c48d44';

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

/// See also [getAlbumInfo].
@ProviderFor(getAlbumInfo)
const getAlbumInfoProvider = GetAlbumInfoFamily();

/// See also [getAlbumInfo].
class GetAlbumInfoFamily extends Family<AsyncValue<AlbumPagePresentation>> {
  /// See also [getAlbumInfo].
  const GetAlbumInfoFamily();

  /// See also [getAlbumInfo].
  GetAlbumInfoProvider call(
    String albumId,
  ) {
    return GetAlbumInfoProvider(
      albumId,
    );
  }

  @override
  GetAlbumInfoProvider getProviderOverride(
    covariant GetAlbumInfoProvider provider,
  ) {
    return call(
      provider.albumId,
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
  String? get name => r'getAlbumInfoProvider';
}

/// See also [getAlbumInfo].
class GetAlbumInfoProvider
    extends AutoDisposeFutureProvider<AlbumPagePresentation> {
  /// See also [getAlbumInfo].
  GetAlbumInfoProvider(
    String albumId,
  ) : this._internal(
          (ref) => getAlbumInfo(
            ref as GetAlbumInfoRef,
            albumId,
          ),
          from: getAlbumInfoProvider,
          name: r'getAlbumInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAlbumInfoHash,
          dependencies: GetAlbumInfoFamily._dependencies,
          allTransitiveDependencies:
              GetAlbumInfoFamily._allTransitiveDependencies,
          albumId: albumId,
        );

  GetAlbumInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.albumId,
  }) : super.internal();

  final String albumId;

  @override
  Override overrideWith(
    FutureOr<AlbumPagePresentation> Function(GetAlbumInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAlbumInfoProvider._internal(
        (ref) => create(ref as GetAlbumInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        albumId: albumId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<AlbumPagePresentation> createElement() {
    return _GetAlbumInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAlbumInfoProvider && other.albumId == albumId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, albumId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetAlbumInfoRef on AutoDisposeFutureProviderRef<AlbumPagePresentation> {
  /// The parameter `albumId` of this provider.
  String get albumId;
}

class _GetAlbumInfoProviderElement
    extends AutoDisposeFutureProviderElement<AlbumPagePresentation>
    with GetAlbumInfoRef {
  _GetAlbumInfoProviderElement(super.provider);

  @override
  String get albumId => (origin as GetAlbumInfoProvider).albumId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
