import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/carosol_item_model.dart';
import '../models/multiplayer_item_model.dart';
import '../models/contestcard_item_model.dart';
import 'package:insource/presentation/home_screen/models/home_model.dart';
part 'home_state.dart';

final homeNotifier = StateNotifierProvider<HomeNotifier, HomeState>(
  (ref) => HomeNotifier(HomeState(
    sliderIndex: 0,
    homeModelObj: HomeModel(
        carosolItemList: List.generate(1, (index) => CarosolItemModel()),
        multiplayerItemList: [
          MultiplayerItemModel(
              multiplayerIcon: ImageConstant.imgMultiplayerIcon,
              multiplayerText: "multiplayer"),
          MultiplayerItemModel(
              multiplayerIcon: ImageConstant.imgTropyStar,
              multiplayerText: "tournament"),
          MultiplayerItemModel(
              multiplayerIcon: ImageConstant.imgIconPeople,
              multiplayerText: "your rooms")
        ],
        contestcardItemList: [
          ContestcardItemModel(
              timer: "27m 54s",
              title: "MEGA CONTEST",
              prize: "1.5 CRORE",
              spots: "50,000 spots ",
              winnerText: "20,000 Winners",
              joinButton: "JOIN",
              entryFee: "Entry fee : free",
              spotsLeft: "20% Left")
        ]),
  )),
);

/// A notifier that manages the state of a Home according to the event that is dispatched to it.
class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(HomeState state) : super(state) {}
}
