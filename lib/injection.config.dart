// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'infrastructure/core/repositories/advertisement_repository_impl.dart'
    as _i3;
import 'infrastructure/core/util/dio_instance.dart' as _i6;
import 'infrastructure/core/util/logger_instance.dart' as _i4;

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
    gh.lazySingleton<_i4.LoggerInstance>(() => _i4.LoggerInstance());
    gh.factory<String>(
      () => dioInstance.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.lazySingleton<_i5.Dio>(
        () => dioInstance.dio(gh<String>(instanceName: 'BaseUrl')));
    return this;
  }
}

class _$DioInstance extends _i6.DioInstance {}
