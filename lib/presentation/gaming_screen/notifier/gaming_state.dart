// ignore_for_file: must_be_immutable

part of 'gaming_notifier.dart';

/// Represents the state of Gaming in the application.
class GamingState extends Equatable {
  GamingState({this.gamingModelObj});

  GamingModel? gamingModelObj;

  @override
  List<Object?> get props => [
        gamingModelObj,
      ];

  GamingState copyWith({GamingModel? gamingModelObj}) {
    return GamingState(
      gamingModelObj: gamingModelObj ?? this.gamingModelObj,
    );
  }
}
