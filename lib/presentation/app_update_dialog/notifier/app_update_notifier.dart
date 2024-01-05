import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insource/presentation/app_update_dialog/models/app_update_model.dart';
part 'app_update_state.dart';

final appUpdateNotifier =
    StateNotifierProvider<AppUpdateNotifier, AppUpdateState>(
  (ref) => AppUpdateNotifier(AppUpdateState(
    appUpdateModelObj: AppUpdateModel(),
  )),
);

/// A notifier that manages the state of a AppUpdate according to the event that is dispatched to it.
class AppUpdateNotifier extends StateNotifier<AppUpdateState> {
  AppUpdateNotifier(AppUpdateState state) : super(state) {}
}
