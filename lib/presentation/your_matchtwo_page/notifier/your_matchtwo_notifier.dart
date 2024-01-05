import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insource/presentation/your_matchtwo_page/models/your_matchtwo_model.dart';
part 'your_matchtwo_state.dart';

final yourMatchtwoNotifier =
    StateNotifierProvider<YourMatchtwoNotifier, YourMatchtwoState>(
  (ref) => YourMatchtwoNotifier(YourMatchtwoState(
    yourMatchtwoModelObj: YourMatchtwoModel(),
  )),
);

/// A notifier that manages the state of a YourMatchtwo according to the event that is dispatched to it.
class YourMatchtwoNotifier extends StateNotifier<YourMatchtwoState> {
  YourMatchtwoNotifier(YourMatchtwoState state) : super(state) {}
}
