import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insource/presentation/live_page/models/live_model.dart';
part 'live_state.dart';

final liveNotifier = StateNotifierProvider<LiveNotifier, LiveState>(
  (ref) => LiveNotifier(LiveState(
    liveModelObj: LiveModel(),
  )),
);

/// A notifier that manages the state of a Live according to the event that is dispatched to it.
class LiveNotifier extends StateNotifier<LiveState> {
  LiveNotifier(LiveState state) : super(state) {}
}
