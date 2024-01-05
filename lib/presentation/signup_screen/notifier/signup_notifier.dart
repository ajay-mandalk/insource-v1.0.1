import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insource/presentation/signup_screen/models/signup_model.dart';
part 'signup_state.dart';

final signupNotifier = StateNotifierProvider<SignupNotifier, SignupState>(
  (ref) => SignupNotifier(SignupState(
    mdiinviteController: TextEditingController(),
    userNameController: TextEditingController(),
    phoneNumberController: TextEditingController(),
    enterOTPLabelController: TextEditingController(),
    signupModelObj: SignupModel(),
  )),
);

/// A notifier that manages the state of a Signup according to the event that is dispatched to it.
class SignupNotifier extends StateNotifier<SignupState> {
  SignupNotifier(SignupState state) : super(state) {}
}
