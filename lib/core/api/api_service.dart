
import 'package:dio/dio.dart';
import 'package:edit_profile/core/errors/server_exeptions.dart';
import 'package:edit_profile/core/network/error_message_model.dart';

class ApiService{
  final Dio _dio;
  ApiService(this._dio);


  Future<Map<String,dynamic>> get({required String url, String? token})async{
    //_dio.options.headers['authorization'] = token;
    Map<String,String> head={
      "authorization":'Bearer bWtsQG1rbC5jb206MTIzNDU2',
      'Accept':'application/json',
    };
    _dio.options=BaseOptions(headers:head);
    var response = await _dio.get(
      url
    );
    if(response.statusCode==200) {
      return response.data;
    } else{
      throw ServerException(errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }

  }

}