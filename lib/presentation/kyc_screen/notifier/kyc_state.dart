// ignore_for_file: must_be_immutable

part of 'kyc_notifier.dart';

/// Represents the state of Kyc in the application.
class KycState extends Equatable {
  KycState({
    this.identityCardController,
    this.passportValueController,
    this.drivingLicenseController,
    this.selectedDropDownValue,
    this.iconCheck = false,
    this.kycModelObj,
  });

  TextEditingController? identityCardController;

  TextEditingController? passportValueController;

  TextEditingController? drivingLicenseController;

  SelectionPopupModel? selectedDropDownValue;

  KycModel? kycModelObj;

  bool iconCheck;

  @override
  List<Object?> get props => [
        identityCardController,
        passportValueController,
        drivingLicenseController,
        selectedDropDownValue,
        iconCheck,
        kycModelObj,
      ];

  KycState copyWith({
    TextEditingController? identityCardController,
    TextEditingController? passportValueController,
    TextEditingController? drivingLicenseController,
    SelectionPopupModel? selectedDropDownValue,
    bool? iconCheck,
    KycModel? kycModelObj,
  }) {
    return KycState(
      identityCardController:
          identityCardController ?? this.identityCardController,
      passportValueController:
          passportValueController ?? this.passportValueController,
      drivingLicenseController:
          drivingLicenseController ?? this.drivingLicenseController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      iconCheck: iconCheck ?? this.iconCheck,
      kycModelObj: kycModelObj ?? this.kycModelObj,
    );
  }
}
