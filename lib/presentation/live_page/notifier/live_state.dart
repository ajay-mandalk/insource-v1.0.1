// ignore_for_file: must_be_immutable

part of 'live_notifier.dart';

/// Represents the state of Live in the application.
class LiveState extends Equatable {
  LiveState({this.liveModelObj});

  LiveModel? liveModelObj;

  @override
  List<Object?> get props => [
        liveModelObj,
      ];

  LiveState copyWith({LiveModel? liveModelObj}) {
    return LiveState(
      liveModelObj: liveModelObj ?? this.liveModelObj,
    );
  }
}
