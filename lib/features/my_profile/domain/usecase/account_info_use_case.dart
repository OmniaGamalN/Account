

import 'package:dartz/dartz.dart';
import 'package:edit_profile/core/errors/failures.dart';
import 'package:edit_profile/core/usecase/base_usecase.dart';
import 'package:edit_profile/features/my_profile/data/model/account_info_model.dart';
import 'package:edit_profile/features/my_profile/domain/repository/base_account_info_repo.dart';

class AccountInfoUseCase extends BaseUseCase<AccountInfoModel,NoParameter>{
  final BaseAccountInfoRepo baseAccountInfoRepo;
  AccountInfoUseCase({required this.baseAccountInfoRepo});
  @override
  Future<Either<Failure, AccountInfoModel>> call(NoParameter parameter)async {
    return await baseAccountInfoRepo.getAccountInfo();
  }

}