// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'rankingrow_item_model.dart';

/// This class defines the variables used in the [contest_detail_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ContestDetailModel extends Equatable {
  ContestDetailModel({this.rankingrowItemList = const []}) {}

  List<RankingrowItemModel> rankingrowItemList;

  ContestDetailModel copyWith({List<RankingrowItemModel>? rankingrowItemList}) {
    return ContestDetailModel(
      rankingrowItemList: rankingrowItemList ?? this.rankingrowItemList,
    );
  }

  @override
  List<Object?> get props => [rankingrowItemList];
}
