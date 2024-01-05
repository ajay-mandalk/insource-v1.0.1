import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insource/presentation/no_result_screen/models/no_result_model.dart';
part 'no_result_state.dart';

final noResultNotifier = StateNotifierProvider<NoResultNotifier, NoResultState>(
  (ref) => NoResultNotifier(NoResultState(
    noResultModelObj: NoResultModel(),
  )),
);

/// A notifier that manages the state of a NoResult according to the event that is dispatched to it.
class NoResultNotifier extends StateNotifier<NoResultState> {
  NoResultNotifier(NoResultState state) : super(state) {}
}
