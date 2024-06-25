import 'package:edit_profile/features/my_profile/domain/entities/account_info.dart';

import '../../domain/entities/user.dart';

class AccountInfoModel extends AccountInfo {
  AccountInfoModel(
      {required super.teacherSubjects,
      required super.studentMv,
      required super.examSubjects,
      required super.user,
      required super.student,
      required super.teacher,
      required super.picturePath,
      required super.arGrade,
      required super.enGrade,
      required super.userType,
      required super.oldPassword,
      required super.newPassword,
      required super.confirmPassword,
      required super.stageId,
      required super.eduYearId,
      required super.profilePicture});

  factory AccountInfoModel.fromJson(Map<String,dynamic>json)=>AccountInfoModel(
      teacherSubjects : json['teacher_subjects'],
      studentMv : json['student_mv'],
      examSubjects : json['examSubjects'],
  user : json['user'] != null ?  User.fromJson(json['user']) : null,
  student : json['student'],
  teacher : json['teacher'],
  picturePath : json['picturePath'],
  arGrade : json['ar_grade'],
  enGrade : json['en_grade'],
  userType : json['userType'],
  oldPassword : json['oldPassword'],
  newPassword : json['newPassword'],
  confirmPassword : json['confirmPassword'],
  stageId : json['stageId'],
  eduYearId : json['eduYearId'],
  profilePicture : json['profilePicture'],
  );
}
