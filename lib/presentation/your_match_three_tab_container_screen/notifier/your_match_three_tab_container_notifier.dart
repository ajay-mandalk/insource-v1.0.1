import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insource/presentation/your_match_three_tab_container_screen/models/your_match_three_tab_container_model.dart';
part 'your_match_three_tab_container_state.dart';

final yourMatchThreeTabContainerNotifier = StateNotifierProvider<
    YourMatchThreeTabContainerNotifier, YourMatchThreeTabContainerState>(
  (ref) => YourMatchThreeTabContainerNotifier(YourMatchThreeTabContainerState(
    yourMatchThreeTabContainerModelObj: YourMatchThreeTabContainerModel(),
  )),
);

/// A notifier that manages the state of a YourMatchThreeTabContainer according to the event that is dispatched to it.
class YourMatchThreeTabContainerNotifier
    extends StateNotifier<YourMatchThreeTabContainerState> {
  YourMatchThreeTabContainerNotifier(YourMatchThreeTabContainerState state)
      : super(state) {}
}
