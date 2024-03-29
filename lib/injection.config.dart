// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'infrastructure/auth/repositories/auth_repository_impl.dart' as _i6;
import 'infrastructure/core/repositories/advertisement_repository_impl.dart'
    as _i3;
import 'infrastructure/core/services/firebase_api.dart' as _i8;
import 'infrastructure/core/util/dio_instance.dart' as _i16;
import 'infrastructure/core/util/endpoints_routes.dart' as _i7;
import 'infrastructure/core/util/local_storage_instance.dart' as _i9;
import 'infrastructure/core/util/logger_instance.dart' as _i10;
import 'infrastructure/multimedia_related/repositories/album_repository_impl.dart'
    as _i4;
import 'infrastructure/multimedia_related/repositories/artist_repository_impl.dart'
    as _i5;
import 'infrastructure/multimedia_related/repositories/playlist_repository_impl.dart'
    as _i11;
import 'infrastructure/multimedia_related/repositories/search_repository_impl.dart'
    as _i12;
import 'infrastructure/multimedia_related/repositories/song_repository_impl.dart'
    as _i13;
import 'infrastructure/user_related/repositories/user_repository_impl.dart'
    as _i14;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioInstance = _$DioInstance();
    gh.lazySingleton<_i3.AdvertisementRepositoryImpl>(
        () => _i3.AdvertisementRepositoryImpl());
    gh.lazySingleton<_i4.AlbumRepositoryImpl>(() => _i4.AlbumRepositoryImpl());
    gh.lazySingleton<_i5.ArtistRepositoryImpl>(
        () => _i5.ArtistRepositoryImpl());
    gh.lazySingleton<_i6.AuthRepositoryImpl>(() => _i6.AuthRepositoryImpl());
    gh.lazySingleton<_i7.EndpointsGetter>(() => _i7.EndpointsGetter());
    gh.lazySingleton<_i8.FireBaseAPI>(() => _i8.FireBaseAPI());
    gh.lazySingleton<_i9.LocalStorageInstance>(
        () => _i9.LocalStorageInstance());
    gh.lazySingleton<_i10.LoggerInstance>(() => _i10.LoggerInstance());
    gh.lazySingleton<_i11.PlaylistRepositoryImpl>(
        () => _i11.PlaylistRepositoryImpl());
    gh.lazySingleton<_i12.SearchRepositoryImpl>(
        () => _i12.SearchRepositoryImpl());
    gh.lazySingleton<_i13.SongRepositoryImpl>(() => _i13.SongRepositoryImpl());
    gh.factory<String>(
      () => dioInstance.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.lazySingleton<_i14.UserRepositoryImpl>(() => _i14.UserRepositoryImpl());
    gh.lazySingleton<_i15.Dio>(
        () => dioInstance.dio(gh<String>(instanceName: 'BaseUrl')));
    return this;
  }
}

class _$DioInstance extends _i16.DioInstance {}
