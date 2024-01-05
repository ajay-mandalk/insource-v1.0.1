import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/rankingrow_item_model.dart';
import 'package:insource/presentation/contest_detail_screen/models/contest_detail_model.dart';
part 'contest_detail_state.dart';

final contestDetailNotifier =
    StateNotifierProvider<ContestDetailNotifier, ContestDetailState>(
  (ref) => ContestDetailNotifier(ContestDetailState(
    contestDetailModelObj: ContestDetailModel(rankingrowItemList: [
      RankingrowItemModel(rank: "#2", range: "2 to 5", amount: "Rs 2,000"),
      RankingrowItemModel(rank: "#3", range: "5 to 10", amount: "Rs 1,500"),
      RankingrowItemModel(rank: "#4", range: "10 to 50", amount: "Rs 1,000"),
      RankingrowItemModel(rank: "#5", range: "50 to 500", amount: "Rs 100")
    ]),
  )),
);

/// A notifier that manages the state of a ContestDetail according to the event that is dispatched to it.
class ContestDetailNotifier extends StateNotifier<ContestDetailState> {
  ContestDetailNotifier(ContestDetailState state) : super(state) {}
}
