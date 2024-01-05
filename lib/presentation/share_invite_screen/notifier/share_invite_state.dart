// ignore_for_file: must_be_immutable

part of 'share_invite_notifier.dart';

/// Represents the state of ShareInvite in the application.
class ShareInviteState extends Equatable {
  ShareInviteState({this.shareInviteModelObj});

  ShareInviteModel? shareInviteModelObj;

  @override
  List<Object?> get props => [
        shareInviteModelObj,
      ];

  ShareInviteState copyWith({ShareInviteModel? shareInviteModelObj}) {
    return ShareInviteState(
      shareInviteModelObj: shareInviteModelObj ?? this.shareInviteModelObj,
    );
  }
}
