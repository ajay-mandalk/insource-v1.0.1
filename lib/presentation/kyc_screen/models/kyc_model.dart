// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:insource/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [kyc_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class KycModel extends Equatable {
  KycModel({this.dropdownItemList = const []}) {}

  List<SelectionPopupModel> dropdownItemList;

  KycModel copyWith({List<SelectionPopupModel>? dropdownItemList}) {
    return KycModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
