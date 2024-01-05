import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insource/presentation/room_screen/models/room_model.dart';
part 'room_state.dart';

final roomNotifier = StateNotifierProvider<RoomNotifier, RoomState>(
  (ref) => RoomNotifier(RoomState(
    roomModelObj: RoomModel(),
  )),
);

/// A notifier that manages the state of a Room according to the event that is dispatched to it.
class RoomNotifier extends StateNotifier<RoomState> {
  RoomNotifier(RoomState state) : super(state) {}
}
