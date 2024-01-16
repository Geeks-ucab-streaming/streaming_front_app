// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_search_info.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getSearchInfoHash() => r'3b0cb360b136b0476087dfb1d3f0857834c604ad';

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

/// See also [getSearchInfo].
@ProviderFor(getSearchInfo)
const getSearchInfoProvider = GetSearchInfoFamily();

/// See also [getSearchInfo].
class GetSearchInfoFamily extends Family<AsyncValue<SearchPresentation>> {
  /// See also [getSearchInfo].
  const GetSearchInfoFamily();

  /// See also [getSearchInfo].
  GetSearchInfoProvider call(
    String query,
  ) {
    return GetSearchInfoProvider(
      query,
    );
  }

  @override
  GetSearchInfoProvider getProviderOverride(
    covariant GetSearchInfoProvider provider,
  ) {
    return call(
      provider.query,
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
  String? get name => r'getSearchInfoProvider';
}

/// See also [getSearchInfo].
class GetSearchInfoProvider
    extends AutoDisposeFutureProvider<SearchPresentation> {
  /// See also [getSearchInfo].
  GetSearchInfoProvider(
    String query,
  ) : this._internal(
          (ref) => getSearchInfo(
            ref as GetSearchInfoRef,
            query,
          ),
          from: getSearchInfoProvider,
          name: r'getSearchInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSearchInfoHash,
          dependencies: GetSearchInfoFamily._dependencies,
          allTransitiveDependencies:
              GetSearchInfoFamily._allTransitiveDependencies,
          query: query,
        );

  GetSearchInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
  }) : super.internal();

  final String query;

  @override
  Override overrideWith(
    FutureOr<SearchPresentation> Function(GetSearchInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetSearchInfoProvider._internal(
        (ref) => create(ref as GetSearchInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<SearchPresentation> createElement() {
    return _GetSearchInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSearchInfoProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetSearchInfoRef on AutoDisposeFutureProviderRef<SearchPresentation> {
  /// The parameter `query` of this provider.
  String get query;
}

class _GetSearchInfoProviderElement
    extends AutoDisposeFutureProviderElement<SearchPresentation>
    with GetSearchInfoRef {
  _GetSearchInfoProviderElement(super.provider);

  @override
  String get query => (origin as GetSearchInfoProvider).query;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
