import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final String statusMessage;
  final int statusCode;


  const ErrorMessageModel(
      {required this.statusMessage,
        required this.statusCode,
        });

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) =>
      ErrorMessageModel(
          statusMessage: json['status_message'],
          statusCode: json['status_code'],
          );

  @override
  // TODO: implement props
  List<Object?> get props => [statusMessage, statusCode];
}
