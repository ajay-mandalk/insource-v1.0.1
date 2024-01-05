// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'contestcard1_item_model.dart';

/// This class defines the variables used in the [upcoming_page],
/// and is typically used to hold data that is passed between different parts of the application.
class UpcomingModel extends Equatable {
  UpcomingModel({this.contestcard1ItemList = const []}) {}

  List<Contestcard1ItemModel> contestcard1ItemList;

  UpcomingModel copyWith({List<Contestcard1ItemModel>? contestcard1ItemList}) {
    return UpcomingModel(
      contestcard1ItemList: contestcard1ItemList ?? this.contestcard1ItemList,
    );
  }

  @override
  List<Object?> get props => [contestcard1ItemList];
}
