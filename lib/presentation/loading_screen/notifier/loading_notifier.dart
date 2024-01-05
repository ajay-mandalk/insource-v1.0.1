import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insource/presentation/loading_screen/models/loading_model.dart';
part 'loading_state.dart';

final loadingNotifier = StateNotifierProvider<LoadingNotifier, LoadingState>(
  (ref) => LoadingNotifier(LoadingState(
    loadingModelObj: LoadingModel(),
  )),
);

/// A notifier that manages the state of a Loading according to the event that is dispatched to it.
class LoadingNotifier extends StateNotifier<LoadingState> {
  LoadingNotifier(LoadingState state) : super(state) {}
}
