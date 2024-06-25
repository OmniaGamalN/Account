
import 'package:equatable/equatable.dart';

class User extends Equatable{
  final int? userID;
  final String? accountEmail;
  final String? accountPassword;
  final dynamic confirmPassword;
  final int? roleId;
  final dynamic reserveId;
  final dynamic isAdmin;
  final int? profilePictureId;
  final String? arName;
  final dynamic dateOfBirth;
  final dynamic genderId;
  final dynamic govId;
  final dynamic code;
  final String? mobile;
  final dynamic state;
  final double credits;
  final dynamic isTestAccount;
  final dynamic countryId;
  final dynamic description;
  final bool? fullyRegistered;
  final bool? verified;
  final String? creationDate;
  final int? creationUserId;
  final dynamic editedUserId;
  final dynamic editedDate;
  final dynamic centerId;
  final dynamic createBranchId;
  final dynamic updateBranchId;
  final dynamic registrationReferCode;
  final int? userTypeId;

  User(
      {this.userID,
        this.accountEmail,
        this.accountPassword,
        this.confirmPassword,
        this.roleId,
        this.reserveId,
        this.isAdmin,
        this.profilePictureId,
        this.arName,
        this.dateOfBirth,
        this.genderId,
        this.govId,
        this.code,
        this.mobile,
        this.state,
        required this.credits,
        this.isTestAccount,
        this.countryId,
        this.description,
        this.fullyRegistered,
        this.verified,
        this.creationDate,
        this.creationUserId,
        this.editedUserId,
        this.editedDate,
        this.centerId,
        this.createBranchId,
        this.updateBranchId,
        this.registrationReferCode,
        this.userTypeId});
  factory User.fromJson(Map<String,dynamic>json)=>User(
      userID : json['user_ID'],
      accountEmail : json['account_email'],
      accountPassword : json['account_password'],
      confirmPassword : json['ConfirmPassword'],
      roleId : json['roleId'],
      reserveId : json['reserveId'],
      isAdmin : json['IsAdmin'],
      profilePictureId : json['profilePictureId'],
      arName : json['ar_name'],
      dateOfBirth : json['date_of_birth'],
      genderId : json['gender_id'],
      govId : json['gov_id'],
      code : json['code'],
      mobile : json['mobile'],
      state : json['state'],
      credits : json['credits'],
      isTestAccount : json['IsTestAccount'],
      countryId : json['country_id'],
      description : json['description'],
      fullyRegistered : json['fullyRegistered'],
      verified : json['verified'],
      creationDate : json['creationDate'],
      creationUserId : json['CreationUserId'],
      editedUserId : json['EditedUserId'],
      editedDate : json['EditedDate'],
      centerId : json['centerId'],
      createBranchId : json['CreateBranchId'],
      updateBranchId : json['UpdateBranchId'],
      registrationReferCode : json['RegistrationReferCode'],
      userTypeId : json['userTypeId']
  );

  @override
  // TODO: implement props
  List<Object?> get props => [
    userID,
    accountEmail,
    accountPassword,
    confirmPassword,
    roleId,
    reserveId,
    isAdmin,
    profilePictureId,
    arName,
    dateOfBirth,
    genderId,
    govId,
    code,
    mobile,
    state,
    credits,
    isTestAccount,
    countryId,
    description,
    fullyRegistered,
    verified,
    creationDate,
    creationUserId,
    editedUserId,
    editedDate,
    centerId,
    createBranchId,
    updateBranchId,
    registrationReferCode,
    userTypeId
  ];

}