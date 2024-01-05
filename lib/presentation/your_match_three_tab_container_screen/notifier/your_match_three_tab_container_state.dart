// ignore_for_file: must_be_immutable

part of 'your_match_three_tab_container_notifier.dart';

/// Represents the state of YourMatchThreeTabContainer in the application.
class YourMatchThreeTabContainerState extends Equatable {
  YourMatchThreeTabContainerState({this.yourMatchThreeTabContainerModelObj});

  YourMatchThreeTabContainerModel? yourMatchThreeTabContainerModelObj;

  @override
  List<Object?> get props => [
        yourMatchThreeTabContainerModelObj,
      ];

  YourMatchThreeTabContainerState copyWith(
      {YourMatchThreeTabContainerModel? yourMatchThreeTabContainerModelObj}) {
    return YourMatchThreeTabContainerState(
      yourMatchThreeTabContainerModelObj: yourMatchThreeTabContainerModelObj ??
          this.yourMatchThreeTabContainerModelObj,
    );
  }
}
