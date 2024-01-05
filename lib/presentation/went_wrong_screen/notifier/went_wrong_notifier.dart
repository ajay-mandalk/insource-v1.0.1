import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insource/presentation/went_wrong_screen/models/went_wrong_model.dart';
part 'went_wrong_state.dart';

final wentWrongNotifier =
    StateNotifierProvider<WentWrongNotifier, WentWrongState>(
  (ref) => WentWrongNotifier(WentWrongState(
    wentWrongModelObj: WentWrongModel(),
  )),
);

/// A notifier that manages the state of a WentWrong according to the event that is dispatched to it.
class WentWrongNotifier extends StateNotifier<WentWrongState> {
  WentWrongNotifier(WentWrongState state) : super(state) {}
}
