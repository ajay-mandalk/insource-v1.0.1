// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'componenttwo_item_model.dart';

/// This class defines the variables used in the [leaderboard_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LeaderboardModel extends Equatable {
  LeaderboardModel({this.componenttwoItemList = const []}) {}

  List<ComponenttwoItemModel> componenttwoItemList;

  LeaderboardModel copyWith(
      {List<ComponenttwoItemModel>? componenttwoItemList}) {
    return LeaderboardModel(
      componenttwoItemList: componenttwoItemList ?? this.componenttwoItemList,
    );
  }

  @override
  List<Object?> get props => [componenttwoItemList];
}
