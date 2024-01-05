import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insource/presentation/contest_room_screen/models/contest_room_model.dart';
part 'contest_room_state.dart';

final contestRoomNotifier =
    StateNotifierProvider<ContestRoomNotifier, ContestRoomState>(
  (ref) => ContestRoomNotifier(ContestRoomState(
    contestRoomModelObj: ContestRoomModel(),
  )),
);

/// A notifier that manages the state of a ContestRoom according to the event that is dispatched to it.
class ContestRoomNotifier extends StateNotifier<ContestRoomState> {
  ContestRoomNotifier(ContestRoomState state) : super(state) {}
}
