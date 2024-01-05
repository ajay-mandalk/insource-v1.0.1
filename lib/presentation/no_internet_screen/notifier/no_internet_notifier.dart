import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insource/presentation/no_internet_screen/models/no_internet_model.dart';
part 'no_internet_state.dart';

final noInternetNotifier =
    StateNotifierProvider<NoInternetNotifier, NoInternetState>(
  (ref) => NoInternetNotifier(NoInternetState(
    noInternetModelObj: NoInternetModel(),
  )),
);

/// A notifier that manages the state of a NoInternet according to the event that is dispatched to it.
class NoInternetNotifier extends StateNotifier<NoInternetState> {
  NoInternetNotifier(NoInternetState state) : super(state) {}
}
