import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchy2_item_model.dart';
import 'package:insource/presentation/winner_screen/models/winner_model.dart';
part 'winner_state.dart';

final winnerNotifier = StateNotifierProvider<WinnerNotifier, WinnerState>(
  (ref) => WinnerNotifier(WinnerState(
    winnerModelObj: WinnerModel(viewhierarchy2ItemList: [
      Viewhierarchy2ItemModel(one: "#1", text: "GOPI", text1: "+9.77%"),
      Viewhierarchy2ItemModel(one: "#2", text: "Rishank", text1: "+9.77%"),
      Viewhierarchy2ItemModel(one: "#3", text: "Ashu", text1: "+9.77%"),
      Viewhierarchy2ItemModel(one: "#4", text: "shashank", text1: "-9.77%")
    ]),
  )),
);

/// A notifier that manages the state of a Winner according to the event that is dispatched to it.
class WinnerNotifier extends StateNotifier<WinnerState> {
  WinnerNotifier(WinnerState state) : super(state) {}
}
