// ignore_for_file: must_be_immutable

part of 'room_notifier.dart';

/// Represents the state of Room in the application.
class RoomState extends Equatable {
  RoomState({this.roomModelObj});

  RoomModel? roomModelObj;

  @override
  List<Object?> get props => [
        roomModelObj,
      ];

  RoomState copyWith({RoomModel? roomModelObj}) {
    return RoomState(
      roomModelObj: roomModelObj ?? this.roomModelObj,
    );
  }
}
