// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'viewhierarchy_item_model.dart';

/// This class defines the variables used in the [gaming_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class GamingModel extends Equatable {
  GamingModel({this.viewhierarchyItemList = const []}) {}

  List<ViewhierarchyItemModel> viewhierarchyItemList;

  GamingModel copyWith({List<ViewhierarchyItemModel>? viewhierarchyItemList}) {
    return GamingModel(
      viewhierarchyItemList:
          viewhierarchyItemList ?? this.viewhierarchyItemList,
    );
  }

  @override
  List<Object?> get props => [viewhierarchyItemList];
}
