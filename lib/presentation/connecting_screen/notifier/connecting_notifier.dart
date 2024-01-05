import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insource/presentation/connecting_screen/models/connecting_model.dart';
part 'connecting_state.dart';

final connectingNotifier =
    StateNotifierProvider<ConnectingNotifier, ConnectingState>(
  (ref) => ConnectingNotifier(ConnectingState(
    connectingModelObj: ConnectingModel(),
  )),
);

/// A notifier that manages the state of a Connecting according to the event that is dispatched to it.
class ConnectingNotifier extends StateNotifier<ConnectingState> {
  ConnectingNotifier(ConnectingState state) : super(state) {}
}
