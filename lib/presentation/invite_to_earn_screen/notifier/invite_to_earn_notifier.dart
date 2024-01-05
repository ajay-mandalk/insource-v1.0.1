import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:insource/presentation/invite_to_earn_screen/models/invite_to_earn_model.dart';
part 'invite_to_earn_state.dart';

final inviteToEarnNotifier =
    StateNotifierProvider<InviteToEarnNotifier, InviteToEarnState>(
  (ref) => InviteToEarnNotifier(InviteToEarnState(
    inviteToEarnModelObj: InviteToEarnModel(),
  )),
);

/// A notifier that manages the state of a InviteToEarn according to the event that is dispatched to it.
class InviteToEarnNotifier extends StateNotifier<InviteToEarnState> {
  InviteToEarnNotifier(InviteToEarnState state) : super(state) {}
}
