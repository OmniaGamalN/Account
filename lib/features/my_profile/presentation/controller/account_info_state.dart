
import 'package:edit_profile/features/my_profile/data/model/account_info_model.dart';
import 'package:equatable/equatable.dart';

abstract class AccountInfoState extends Equatable{
  const AccountInfoState();
  @override
  List<Object> get props => [];
}

class AccountInfoInitialState extends AccountInfoState{}
class AccountInfoLoadingState extends AccountInfoState{}
class AccountInfoFailureState extends AccountInfoState{
  final String message;
  const AccountInfoFailureState({required this.message});
}
class AccountInfoSuccessState extends AccountInfoState{
  final AccountInfoModel accountInfo;
  const AccountInfoSuccessState({required this.accountInfo});
}