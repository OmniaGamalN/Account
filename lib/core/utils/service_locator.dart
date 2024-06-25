

import 'package:dio/dio.dart';
import 'package:edit_profile/core/api/api_service.dart';
import 'package:edit_profile/features/my_profile/data/datasource/account-info_data_source.dart';
import 'package:edit_profile/features/my_profile/data/repository/account_info_rep.dart';
import 'package:edit_profile/features/my_profile/domain/repository/base_account_info_repo.dart';
import 'package:edit_profile/features/my_profile/domain/usecase/account_info_use_case.dart';
import 'package:get_it/get_it.dart';

final getIt=GetIt.instance;

void serviceLocator() {
   getIt.registerSingleton<ApiService>(ApiService(Dio()));
   getIt.registerSingleton<RemoteAccountInfoDataSource>(RemoteAccountInfoDataSource(getIt.get<ApiService>(),),);
   getIt.registerSingleton<AccountInfoRep>(AccountInfoRep( getIt.get<RemoteAccountInfoDataSource>(),),);
   getIt.registerSingleton<AccountInfoUseCase>(AccountInfoUseCase(baseAccountInfoRepo: getIt.get<AccountInfoRep>()));
}