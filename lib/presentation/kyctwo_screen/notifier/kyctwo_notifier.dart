import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insource/presentation/kyctwo_screen/models/kyctwo_model.dart';
part 'kyctwo_state.dart';

final kyctwoNotifier = StateNotifierProvider<KyctwoNotifier, KyctwoState>(
  (ref) => KyctwoNotifier(KyctwoState(
    iconCheck: false,
    kyctwoModelObj: KyctwoModel(),
  )),
);

/// A notifier that manages the state of a Kyctwo according to the event that is dispatched to it.
class KyctwoNotifier extends StateNotifier<KyctwoState> {
  KyctwoNotifier(KyctwoState state) : super(state) {}

  void changeCheckBox1(bool value) {
    state = state.copyWith(iconCheck: value);
  }
}
