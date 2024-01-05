// ignore_for_file: must_be_immutable

part of 'connecting_notifier.dart';

/// Represents the state of Connecting in the application.
class ConnectingState extends Equatable {
  ConnectingState({this.connectingModelObj});

  ConnectingModel? connectingModelObj;

  @override
  List<Object?> get props => [
        connectingModelObj,
      ];

  ConnectingState copyWith({ConnectingModel? connectingModelObj}) {
    return ConnectingState(
      connectingModelObj: connectingModelObj ?? this.connectingModelObj,
    );
  }
}
