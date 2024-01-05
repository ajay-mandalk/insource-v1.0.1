// ignore_for_file: must_be_immutable

part of 'edit_profile_notifier.dart';

/// Represents the state of EditProfile in the application.
class EditProfileState extends Equatable {
  EditProfileState({
    this.lockSectionController,
    this.usernameSectionController,
    this.userNameSectionController,
    this.mobileNoSectionController,
    this.passwordSectionController,
    this.passwordSectionController1,
    this.isShowPassword = true,
    this.editProfileModelObj,
  });

  TextEditingController? lockSectionController;

  TextEditingController? usernameSectionController;

  TextEditingController? userNameSectionController;

  TextEditingController? mobileNoSectionController;

  TextEditingController? passwordSectionController;

  TextEditingController? passwordSectionController1;

  EditProfileModel? editProfileModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        lockSectionController,
        usernameSectionController,
        userNameSectionController,
        mobileNoSectionController,
        passwordSectionController,
        passwordSectionController1,
        isShowPassword,
        editProfileModelObj,
      ];

  EditProfileState copyWith({
    TextEditingController? lockSectionController,
    TextEditingController? usernameSectionController,
    TextEditingController? userNameSectionController,
    TextEditingController? mobileNoSectionController,
    TextEditingController? passwordSectionController,
    TextEditingController? passwordSectionController1,
    bool? isShowPassword,
    EditProfileModel? editProfileModelObj,
  }) {
    return EditProfileState(
      lockSectionController:
          lockSectionController ?? this.lockSectionController,
      usernameSectionController:
          usernameSectionController ?? this.usernameSectionController,
      userNameSectionController:
          userNameSectionController ?? this.userNameSectionController,
      mobileNoSectionController:
          mobileNoSectionController ?? this.mobileNoSectionController,
      passwordSectionController:
          passwordSectionController ?? this.passwordSectionController,
      passwordSectionController1:
          passwordSectionController1 ?? this.passwordSectionController1,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      editProfileModelObj: editProfileModelObj ?? this.editProfileModelObj,
    );
  }
}
