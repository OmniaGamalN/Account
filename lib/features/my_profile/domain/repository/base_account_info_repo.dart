import 'package:edit_profile/core/errors/failures.dart';
import 'package:edit_profile/features/my_profile/data/model/account_info_model.dart';
import 'package:dartz/dartz.dart';

abstract class BaseAccountInfoRepo {
  Future<Either<Failure,AccountInfoModel>> getAccountInfo();
}