// ignore_for_file: must_be_immutable

part of 'contest_room_notifier.dart';

/// Represents the state of ContestRoom in the application.
class ContestRoomState extends Equatable {
  ContestRoomState({this.contestRoomModelObj});

  ContestRoomModel? contestRoomModelObj;

  @override
  List<Object?> get props => [
        contestRoomModelObj,
      ];

  ContestRoomState copyWith({ContestRoomModel? contestRoomModelObj}) {
    return ContestRoomState(
      contestRoomModelObj: contestRoomModelObj ?? this.contestRoomModelObj,
    );
  }
}
