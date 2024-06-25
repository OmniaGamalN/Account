import 'package:bloc/bloc.dart';
import 'package:edit_profile/core/usecase/base_usecase.dart';
import 'package:edit_profile/features/my_profile/domain/repository/base_account_info_repo.dart';
import 'package:edit_profile/features/my_profile/domain/usecase/account_info_use_case.dart';
import 'account_info_state.dart';


class AccountInfoCubit extends Cubit<AccountInfoState> {
  AccountInfoCubit(this.accountInfoUseCase) : super(AccountInfoInitialState());

  final AccountInfoUseCase accountInfoUseCase;

  Future<void> getAccountInfo()async{
    emit(AccountInfoLoadingState());
    var res= await accountInfoUseCase(const NoParameter());
    res.fold((failure){
      emit(AccountInfoFailureState(message: failure.message));
    }, (res){
      emit(AccountInfoSuccessState(accountInfo: res));
    });

  }
}
