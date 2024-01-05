// ignore_for_file: must_be_immutable

part of 'gaming_screen_one_notifier.dart';

/// Represents the state of GamingScreenOne in the application.
class GamingScreenOneState extends Equatable {
  GamingScreenOneState({this.gamingScreenOneModelObj});

  GamingScreenOneModel? gamingScreenOneModelObj;

  @override
  List<Object?> get props => [
        gamingScreenOneModelObj,
      ];

  GamingScreenOneState copyWith(
      {GamingScreenOneModel? gamingScreenOneModelObj}) {
    return GamingScreenOneState(
      gamingScreenOneModelObj:
          gamingScreenOneModelObj ?? this.gamingScreenOneModelObj,
    );
  }
}
