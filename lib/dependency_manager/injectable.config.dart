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
import 'package:teesas/app/_shared/stores/category_store/category_store.dart'
    as _i440;
import 'package:teesas/app/_shared/stores/dashboard_store/dashboard_store.dart'
    as _i161;
import 'package:teesas/app/assessment/presentation/stores/assessment_store.dart'
    as _i567;
import 'package:teesas/app/more/downloads/store/downloads_store.dart' as _i49;
import 'package:teesas/app/more/referral/store/referral_store.dart' as _i691;
import 'package:teesas/app/more/subscription/store/subscription_store.dart'
    as _i135;
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
    gh.factory<_i567.AssessmentStore>(() => _i567.AssessmentStore());
    gh.factory<_i49.DownloadsStore>(() => _i49.DownloadsStore());
    gh.factory<_i691.ReferralStore>(() => _i691.ReferralStore());
    gh.factory<_i135.SubscriptionStore>(() => _i135.SubscriptionStore());
    gh.singleton<_i559.MainRouter>(() => _i559.MainRouter());
    gh.lazySingleton<_i440.CategoryStore>(() => _i440.CategoryStore());
    gh.lazySingleton<_i161.DashboardStore>(() => _i161.DashboardStore());
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
