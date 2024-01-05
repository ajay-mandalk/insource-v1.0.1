import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insource/presentation/your_match_three_page/models/your_match_three_model.dart';
part 'your_match_three_state.dart';

final yourMatchThreeNotifier =
    StateNotifierProvider<YourMatchThreeNotifier, YourMatchThreeState>(
  (ref) => YourMatchThreeNotifier(YourMatchThreeState(
    yourMatchThreeModelObj: YourMatchThreeModel(),
  )),
);

/// A notifier that manages the state of a YourMatchThree according to the event that is dispatched to it.
class YourMatchThreeNotifier extends StateNotifier<YourMatchThreeState> {
  YourMatchThreeNotifier(YourMatchThreeState state) : super(state) {}
}
