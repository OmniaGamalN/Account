import 'package:edit_profile/features/my_profile/domain/entities/user.dart';
import 'package:equatable/equatable.dart';

class AccountInfo extends Equatable{


  final dynamic teacherSubjects;
  final dynamic studentMv;
  final dynamic examSubjects;
  final User? user;
  final dynamic student;
  final dynamic teacher;
  final String? picturePath;
  final String? arGrade;
  final String? enGrade;
  final int? userType;
  final dynamic oldPassword;
  final dynamic newPassword;
  final dynamic  confirmPassword;
  final int? stageId;
  final int? eduYearId;
  final dynamic profilePicture;

  AccountInfo(
      {required this.teacherSubjects,
        required this.studentMv,
        required this.examSubjects,
        required this.user,
        required this.student,
        required this.teacher,
        required this.picturePath,
        required this.arGrade,
        required this.enGrade,
        required this.userType,
        required this.oldPassword,
        required this.newPassword,
        required this.confirmPassword,
        required this.stageId,
        required this.eduYearId,
        required this.profilePicture});

  @override
  // TODO: implement props
  List<Object?> get props => [
    teacherSubjects,
    studentMv,
    examSubjects,
    user,
    student,
    teacher,
    picturePath,
    arGrade,
    enGrade,
    userType,
    oldPassword,
    newPassword,
    confirmPassword,
    stageId,
    eduYearId,
    profilePicture
  ];

}