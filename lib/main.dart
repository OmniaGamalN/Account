import 'package:edit_profile/core/utils/app_router.dart';
import 'package:edit_profile/core/utils/colors.dart';
import 'package:edit_profile/core/utils/service_locator.dart';
import 'package:edit_profile/features/my_profile/data/repository/account_info_rep.dart';
import 'package:edit_profile/features/my_profile/domain/usecase/account_info_use_case.dart';
import 'package:edit_profile/features/my_profile/presentation/controller/account_info_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  serviceLocator();
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AccountInfoCubit(
            getIt.get<AccountInfoUseCase>(),
          )..getAccountInfo(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: AppColors.kWhite,
        ),
      ),
    );
  }
}
