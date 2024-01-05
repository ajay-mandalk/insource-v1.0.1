// ignore_for_file: must_be_immutable

part of 'flash_notifier.dart';

/// Represents the state of Flash in the application.
class FlashState extends Equatable {
  FlashState({this.flashModelObj});

  FlashModel? flashModelObj;

  @override
  List<Object?> get props => [
        flashModelObj,
      ];

  FlashState copyWith({FlashModel? flashModelObj}) {
    return FlashState(
      flashModelObj: flashModelObj ?? this.flashModelObj,
    );
  }
}
