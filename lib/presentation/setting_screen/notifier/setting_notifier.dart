import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insource/presentation/setting_screen/models/setting_model.dart';
part 'setting_state.dart';

final settingNotifier = StateNotifierProvider<SettingNotifier, SettingState>(
  (ref) => SettingNotifier(SettingState(
    settingModelObj: SettingModel(),
  )),
);

/// A notifier that manages the state of a Setting according to the event that is dispatched to it.
class SettingNotifier extends StateNotifier<SettingState> {
  SettingNotifier(SettingState state) : super(state) {}
}
