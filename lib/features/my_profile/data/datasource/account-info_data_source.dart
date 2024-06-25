import 'package:edit_profile/core/api/api_keys.dart';
import 'package:edit_profile/core/api/api_service.dart';
import 'package:edit_profile/features/my_profile/data/model/account_info_model.dart';

abstract class BaseRemoteAccountInfoDataSource{

  Future<AccountInfoModel> getAccountInfo();

}

class RemoteAccountInfoDataSource implements BaseRemoteAccountInfoDataSource{
  final ApiService apiService;
  RemoteAccountInfoDataSource(this.apiService);

  @override
  Future< AccountInfoModel> getAccountInfo()async {
    try{
      var data = await apiService.get(
          url: ApiKeys.getProfileInfo,
          token: 'Bearer bWtsQG1rbC5jb206MTIzNDU2');
      return AccountInfoModel.fromJson(data);
    }catch(e){
      print("Exception $e");
      print("Api ${ApiKeys.getProfileInfo}");
      rethrow ;
    }
  }
}