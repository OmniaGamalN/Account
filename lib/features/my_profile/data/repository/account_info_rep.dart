
import 'package:dartz/dartz.dart';
import 'package:edit_profile/core/errors/failures.dart';
import 'package:edit_profile/core/errors/server_exeptions.dart';
import 'package:edit_profile/features/my_profile/data/datasource/account-info_data_source.dart';
import 'package:edit_profile/features/my_profile/data/model/account_info_model.dart';
import 'package:edit_profile/features/my_profile/domain/repository/base_account_info_repo.dart';

class AccountInfoRep implements BaseAccountInfoRepo{
  final BaseRemoteAccountInfoDataSource baseRemoteAccountInfoDataSource;
  AccountInfoRep(this.baseRemoteAccountInfoDataSource);
  @override
  Future<Either<Failure, AccountInfoModel>> getAccountInfo()async {
    final res=await baseRemoteAccountInfoDataSource.getAccountInfo();

    try{
      return Right(res);
    }on ServerException catch(failure){
      return Left(ServerFailure(message: failure.errorMessageModel.statusMessage),);

    }

  }

}