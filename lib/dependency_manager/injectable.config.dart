// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:teesas/app/_shared/data/source/auth_source.dart' as _i789;
import 'package:teesas/app/_shared/domain/repository/auth_repository.dart'
    as _i165;
import 'package:teesas/app/referral/store/referral_store.dart' as _i367;
import 'package:teesas/common/network/network_interceptor.dart' as _i362;
import 'package:teesas/common/services/secured_storage_service.dart' as _i1056;
import 'package:teesas/dependency_manager/modules/app_module.dart' as _i861;
import 'package:teesas/router/main_router.dart' as _i559;
import 'package:teesas/router/route_helper.dart' as _i500;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    gh.factory<_i367.ReferralStore>(() => _i367.ReferralStore());
    gh.singleton<_i559.MainRouter>(() => _i559.MainRouter());
    gh.lazySingleton<_i1056.SecureStorageService>(
      () => _i1056.SecureStorageService(),
    );
    gh.lazySingleton<_i500.RouteHelper>(() => _i500.RouteHelper());
    gh.lazySingleton<_i165.AuthRepository>(
      () => _i165.AuthRepository(gh<_i789.AuthSource>()),
    );
    gh.lazySingleton<_i362.NetworkInterceptor>(
      () => _i362.NetworkInterceptor(gh<_i1056.SecureStorageService>()),
    );
    gh.lazySingleton<_i361.Dio>(
      () => appModule.dio(gh<_i362.NetworkInterceptor>()),
    );
    return this;
  }
}

class _$AppModule extends _i861.AppModule {}
