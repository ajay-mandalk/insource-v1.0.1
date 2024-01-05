// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'viewhierarchy2_item_model.dart';

/// This class defines the variables used in the [winner_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class WinnerModel extends Equatable {
  WinnerModel({this.viewhierarchy2ItemList = const []}) {}

  List<Viewhierarchy2ItemModel> viewhierarchy2ItemList;

  WinnerModel copyWith(
      {List<Viewhierarchy2ItemModel>? viewhierarchy2ItemList}) {
    return WinnerModel(
      viewhierarchy2ItemList:
          viewhierarchy2ItemList ?? this.viewhierarchy2ItemList,
    );
  }

  @override
  List<Object?> get props => [viewhierarchy2ItemList];
}
