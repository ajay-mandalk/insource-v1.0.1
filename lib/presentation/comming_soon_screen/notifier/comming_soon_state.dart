// ignore_for_file: must_be_immutable

part of 'comming_soon_notifier.dart';

/// Represents the state of CommingSoon in the application.
class CommingSoonState extends Equatable {
  CommingSoonState({this.commingSoonModelObj});

  CommingSoonModel? commingSoonModelObj;

  @override
  List<Object?> get props => [
        commingSoonModelObj,
      ];

  CommingSoonState copyWith({CommingSoonModel? commingSoonModelObj}) {
    return CommingSoonState(
      commingSoonModelObj: commingSoonModelObj ?? this.commingSoonModelObj,
    );
  }
}
