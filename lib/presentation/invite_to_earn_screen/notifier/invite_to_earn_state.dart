// ignore_for_file: must_be_immutable

part of 'invite_to_earn_notifier.dart';

/// Represents the state of InviteToEarn in the application.
class InviteToEarnState extends Equatable {
  InviteToEarnState({this.inviteToEarnModelObj});

  InviteToEarnModel? inviteToEarnModelObj;

  @override
  List<Object?> get props => [
        inviteToEarnModelObj,
      ];

  InviteToEarnState copyWith({InviteToEarnModel? inviteToEarnModelObj}) {
    return InviteToEarnState(
      inviteToEarnModelObj: inviteToEarnModelObj ?? this.inviteToEarnModelObj,
    );
  }
}
