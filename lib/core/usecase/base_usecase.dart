import 'package:dartz/dartz.dart';
import 'package:edit_profile/core/errors/failures.dart';
import 'package:equatable/equatable.dart';

abstract class BaseUseCase <T,Parameter>{

  Future<Either<Failure,T>> call(Parameter parameter);
}

class NoParameter extends Equatable{
  const NoParameter();


  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();}