// ignore_for_file: must_be_immutable

part of 'winner_notifier.dart';

/// Represents the state of Winner in the application.
class WinnerState extends Equatable {
  WinnerState({this.winnerModelObj});

  WinnerModel? winnerModelObj;

  @override
  List<Object?> get props => [
        winnerModelObj,
      ];

  WinnerState copyWith({WinnerModel? winnerModelObj}) {
    return WinnerState(
      winnerModelObj: winnerModelObj ?? this.winnerModelObj,
    );
  }
}
