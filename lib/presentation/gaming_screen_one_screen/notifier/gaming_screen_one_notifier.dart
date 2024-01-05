import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchy1_item_model.dart';
import 'package:insource/presentation/gaming_screen_one_screen/models/gaming_screen_one_model.dart';
part 'gaming_screen_one_state.dart';

final gamingScreenOneNotifier =
    StateNotifierProvider<GamingScreenOneNotifier, GamingScreenOneState>(
  (ref) => GamingScreenOneNotifier(GamingScreenOneState(
    gamingScreenOneModelObj: GamingScreenOneModel(viewhierarchy1ItemList: [
      Viewhierarchy1ItemModel(one: "#1", text: "GOPI", text1: "+9.77%"),
      Viewhierarchy1ItemModel(one: "55", text: "Rishank", text1: "+9.77%"),
      Viewhierarchy1ItemModel(one: "57", text: "shashank", text1: "-9.77%"),
      Viewhierarchy1ItemModel(one: "#2", text: "Rishank", text1: "+9.77%"),
      Viewhierarchy1ItemModel(one: "#3", text: "Ashu", text1: "+9.77%")
    ]),
  )),
);

/// A notifier that manages the state of a GamingScreenOne according to the event that is dispatched to it.
class GamingScreenOneNotifier extends StateNotifier<GamingScreenOneState> {
  GamingScreenOneNotifier(GamingScreenOneState state) : super(state) {}
}
