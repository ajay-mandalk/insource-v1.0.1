// ignore_for_file: must_be_immutable

part of 'signup_notifier.dart';

/// Represents the state of Signup in the application.
class SignupState extends Equatable {
  SignupState({
    this.mdiinviteController,
    this.userNameController,
    this.phoneNumberController,
    this.enterOTPLabelController,
    this.signupModelObj,
  });

  TextEditingController? mdiinviteController;

  TextEditingController? userNameController;

  TextEditingController? phoneNumberController;

  TextEditingController? enterOTPLabelController;

  SignupModel? signupModelObj;

  @override
  List<Object?> get props => [
        mdiinviteController,
        userNameController,
        phoneNumberController,
        enterOTPLabelController,
        signupModelObj,
      ];

  SignupState copyWith({
    TextEditingController? mdiinviteController,
    TextEditingController? userNameController,
    TextEditingController? phoneNumberController,
    TextEditingController? enterOTPLabelController,
    SignupModel? signupModelObj,
  }) {
    return SignupState(
      mdiinviteController: mdiinviteController ?? this.mdiinviteController,
      userNameController: userNameController ?? this.userNameController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      enterOTPLabelController:
          enterOTPLabelController ?? this.enterOTPLabelController,
      signupModelObj: signupModelObj ?? this.signupModelObj,
    );
  }
}
