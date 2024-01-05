// ignore_for_file: must_be_immutable

part of 'your_match_three_notifier.dart';

/// Represents the state of YourMatchThree in the application.
class YourMatchThreeState extends Equatable {
  YourMatchThreeState({this.yourMatchThreeModelObj});

  YourMatchThreeModel? yourMatchThreeModelObj;

  @override
  List<Object?> get props => [
        yourMatchThreeModelObj,
      ];

  YourMatchThreeState copyWith({YourMatchThreeModel? yourMatchThreeModelObj}) {
    return YourMatchThreeState(
      yourMatchThreeModelObj:
          yourMatchThreeModelObj ?? this.yourMatchThreeModelObj,
    );
  }
}
