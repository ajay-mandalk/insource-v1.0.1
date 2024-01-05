import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/componenttwo_item_model.dart';
import 'package:insource/presentation/leaderboard_screen/models/leaderboard_model.dart';
part 'leaderboard_state.dart';

final leaderboardNotifier =
    StateNotifierProvider<LeaderboardNotifier, LeaderboardState>(
  (ref) => LeaderboardNotifier(LeaderboardState(
    leaderboardModelObj: LeaderboardModel(componenttwoItemList: [
      ComponenttwoItemModel(one: "#1", text: "GOPI", text1: "+9.77%"),
      ComponenttwoItemModel(one: "#2", text: "Rishank", text1: "+9.77%"),
      ComponenttwoItemModel(one: "#3", text: "Ashu", text1: "+9.77%"),
      ComponenttwoItemModel(one: "#3", text: "Ashu", text1: "+9.77%"),
      ComponenttwoItemModel(one: "#4", text: "shashank", text1: "-9.77%"),
      ComponenttwoItemModel(one: "#4", text: "shashank", text1: "-9.77%")
    ]),
  )),
);

/// A notifier that manages the state of a Leaderboard according to the event that is dispatched to it.
class LeaderboardNotifier extends StateNotifier<LeaderboardState> {
  LeaderboardNotifier(LeaderboardState state) : super(state) {}
}
