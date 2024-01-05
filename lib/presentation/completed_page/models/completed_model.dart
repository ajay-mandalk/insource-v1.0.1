// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'contestcardlist_item_model.dart';

/// This class defines the variables used in the [completed_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CompletedModel extends Equatable {
  CompletedModel({this.contestcardlistItemList = const []}) {}

  List<ContestcardlistItemModel> contestcardlistItemList;

  CompletedModel copyWith(
      {List<ContestcardlistItemModel>? contestcardlistItemList}) {
    return CompletedModel(
      contestcardlistItemList:
          contestcardlistItemList ?? this.contestcardlistItemList,
    );
  }

  @override
  List<Object?> get props => [contestcardlistItemList];
}
