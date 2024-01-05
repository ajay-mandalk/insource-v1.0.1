// ignore_for_file: must_be_immutable

part of 'your_match_notifier.dart';

/// Represents the state of YourMatch in the application.
class YourMatchState extends Equatable {
  YourMatchState({this.yourMatchModelObj});

  YourMatchModel? yourMatchModelObj;

  @override
  List<Object?> get props => [
        yourMatchModelObj,
      ];

  YourMatchState copyWith({YourMatchModel? yourMatchModelObj}) {
    return YourMatchState(
      yourMatchModelObj: yourMatchModelObj ?? this.yourMatchModelObj,
    );
  }
}
