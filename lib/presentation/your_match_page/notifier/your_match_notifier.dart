import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insource/presentation/your_match_page/models/your_match_model.dart';
part 'your_match_state.dart';

final yourMatchNotifier =
    StateNotifierProvider<YourMatchNotifier, YourMatchState>(
  (ref) => YourMatchNotifier(YourMatchState(
    yourMatchModelObj: YourMatchModel(),
  )),
);

/// A notifier that manages the state of a YourMatch according to the event that is dispatched to it.
class YourMatchNotifier extends StateNotifier<YourMatchState> {
  YourMatchNotifier(YourMatchState state) : super(state) {}
}
