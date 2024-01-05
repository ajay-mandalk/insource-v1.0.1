import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/contestcard1_item_model.dart';
import 'package:insource/presentation/upcoming_page/models/upcoming_model.dart';
part 'upcoming_state.dart';

final upcomingNotifier = StateNotifierProvider<UpcomingNotifier, UpcomingState>(
  (ref) => UpcomingNotifier(UpcomingState(
    upcomingModelObj: UpcomingModel(contestcard1ItemList: [
      Contestcard1ItemModel(
          contestTitle: "MEGA CONTEST",
          contestPrize: "1.5 CRORE",
          contestTime: "27m 54s",
          entryFee: "Entry fee : free",
          spotsAvailable: "50,000 spots ",
          spotsLeft: "20% Left",
          winnerText: "20,000 Winners")
    ]),
  )),
);

/// A notifier that manages the state of a Upcoming according to the event that is dispatched to it.
class UpcomingNotifier extends StateNotifier<UpcomingState> {
  UpcomingNotifier(UpcomingState state) : super(state) {}
}
