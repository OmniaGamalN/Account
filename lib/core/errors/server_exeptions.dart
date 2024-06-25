import 'package:edit_profile/core/network/error_message_model.dart';

class ServerException implements Exception{
  final ErrorMessageModel errorMessageModel;
  ServerException({required this.errorMessageModel});
}

class LocalStorageException implements Exception{
  final String errorMessage;
  LocalStorageException({required this.errorMessage});
}