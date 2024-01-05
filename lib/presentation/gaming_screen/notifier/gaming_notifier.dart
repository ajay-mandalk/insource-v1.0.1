import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchy_item_model.dart';
import 'package:insource/presentation/gaming_screen/models/gaming_model.dart';
part 'gaming_state.dart';

final gamingNotifier = StateNotifierProvider<GamingNotifier, GamingState>(
  (ref) => GamingNotifier(GamingState(
    gamingModelObj: GamingModel(viewhierarchyItemList: [
      ViewhierarchyItemModel(one: "#1", textOne: "GOPI", textTwo: "+9.77%"),
      ViewhierarchyItemModel(one: "#2", textOne: "Rishank", textTwo: "+9.77%"),
      ViewhierarchyItemModel(one: "#3", textOne: "Ashu", textTwo: "+9.77%"),
      ViewhierarchyItemModel(one: "#4", textOne: "shashank", textTwo: "-9.77%")
    ]),
  )),
);

/// A notifier that manages the state of a Gaming according to the event that is dispatched to it.
class GamingNotifier extends StateNotifier<GamingState> {
  GamingNotifier(GamingState state) : super(state) {}
}
