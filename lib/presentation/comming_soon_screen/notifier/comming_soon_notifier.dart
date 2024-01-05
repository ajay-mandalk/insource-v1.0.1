import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insource/presentation/comming_soon_screen/models/comming_soon_model.dart';
part 'comming_soon_state.dart';

final commingSoonNotifier =
    StateNotifierProvider<CommingSoonNotifier, CommingSoonState>(
  (ref) => CommingSoonNotifier(CommingSoonState(
    commingSoonModelObj: CommingSoonModel(),
  )),
);

/// A notifier that manages the state of a CommingSoon according to the event that is dispatched to it.
class CommingSoonNotifier extends StateNotifier<CommingSoonState> {
  CommingSoonNotifier(CommingSoonState state) : super(state) {}
}
