// ignore_for_file: must_be_immutable

part of 'login_notifier.dart';

/// Represents the state of Login in the application.
class LoginState extends Equatable {
  LoginState({
    this.phoneNumberController,
    this.enterOTPLabelController,
    this.loginModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? enterOTPLabelController;

  LoginModel? loginModelObj;

  @override
  List<Object?> get props => [
        phoneNumberController,
        enterOTPLabelController,
        loginModelObj,
      ];

  LoginState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? enterOTPLabelController,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      enterOTPLabelController:
          enterOTPLabelController ?? this.enterOTPLabelController,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
