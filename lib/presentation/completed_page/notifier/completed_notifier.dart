import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/contestcardlist_item_model.dart';
import 'package:insource/presentation/completed_page/models/completed_model.dart';
part 'completed_state.dart';

final completedNotifier =
    StateNotifierProvider<CompletedNotifier, CompletedState>(
  (ref) => CompletedNotifier(CompletedState(
    completedModelObj: CompletedModel(contestcardlistItemList: [
      ContestcardlistItemModel(
          cRORECounter: "1.5 CRORE",
          megacontest: "MEGA CONTEST",
          timer: "27m 54s",
          joinText: "JOIN",
          entryFeeFree: "Entry fee : free",
          spots: "50,000 spots ",
          spotsLeft: "20% Left",
          winnersText: "20,000 Winners",
          youWonText: "you won"),
      ContestcardlistItemModel(
          cRORECounter: "1.5 CRORE",
          megacontest: "MEGA CONTEST",
          timer: "27m 54s",
          joinText: "JOIN",
          entryFeeFree: "Entry fee : free",
          spots: "50,000 spots ",
          spotsLeft: "20% Left",
          winnersText: "20,000 Winners",
          youWonText: "you won"),
      ContestcardlistItemModel(
          cRORECounter: "1.5 CRORE",
          megacontest: "MEGA CONTEST",
          timer: "27m 54s",
          joinText: "JOIN",
          entryFeeFree: "Entry fee : free",
          spots: "50,000 spots ",
          spotsLeft: "20% Left",
          winnersText: "20,000 Winners"),
      ContestcardlistItemModel(
          cRORECounter: "1.5 CRORE",
          megacontest: "MEGA CONTEST",
          timer: "27m 54s",
          joinText: "JOIN",
          entryFeeFree: "Entry fee : free",
          spots: "50,000 spots ",
          spotsLeft: "20% Left",
          winnersText: "20,000 Winners",
          youWonText: "you won")
    ]),
  )),
);

/// A notifier that manages the state of a Completed according to the event that is dispatched to it.
class CompletedNotifier extends StateNotifier<CompletedState> {
  CompletedNotifier(CompletedState state) : super(state) {}
}
