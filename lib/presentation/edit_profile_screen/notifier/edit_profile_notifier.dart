import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insource/presentation/edit_profile_screen/models/edit_profile_model.dart';
part 'edit_profile_state.dart';

final editProfileNotifier =
    StateNotifierProvider<EditProfileNotifier, EditProfileState>(
  (ref) => EditProfileNotifier(EditProfileState(
    lockSectionController: TextEditingController(),
    usernameSectionController: TextEditingController(),
    userNameSectionController: TextEditingController(),
    mobileNoSectionController: TextEditingController(),
    passwordSectionController: TextEditingController(),
    passwordSectionController1: TextEditingController(),
    isShowPassword: false,
    editProfileModelObj: EditProfileModel(),
  )),
);

/// A notifier that manages the state of a EditProfile according to the event that is dispatched to it.
class EditProfileNotifier extends StateNotifier<EditProfileState> {
  EditProfileNotifier(EditProfileState state) : super(state) {}

  void changePasswordVisibility() {
    state = state.copyWith(isShowPassword: !(state.isShowPassword ?? false));
  }
}
