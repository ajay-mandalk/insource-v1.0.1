import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insource/presentation/kyc_screen/models/kyc_model.dart';
part 'kyc_state.dart';

final kycNotifier = StateNotifierProvider<KycNotifier, KycState>(
  (ref) => KycNotifier(KycState(
    identityCardController: TextEditingController(),
    passportValueController: TextEditingController(),
    drivingLicenseController: TextEditingController(),
    selectedDropDownValue: SelectionPopupModel(title: ''),
    iconCheck: false,
    kycModelObj: KycModel(dropdownItemList: [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ]),
  )),
);

/// A notifier that manages the state of a Kyc according to the event that is dispatched to it.
class KycNotifier extends StateNotifier<KycState> {
  KycNotifier(KycState state) : super(state) {}

  void changeCheckBox1(bool value) {
    state = state.copyWith(iconCheck: value);
  }
}
