// ignore_for_file: must_be_immutable

part of 'app_update_notifier.dart';

/// Represents the state of AppUpdate in the application.
class AppUpdateState extends Equatable {
  AppUpdateState({this.appUpdateModelObj});

  AppUpdateModel? appUpdateModelObj;

  @override
  List<Object?> get props => [
        appUpdateModelObj,
      ];

  AppUpdateState copyWith({AppUpdateModel? appUpdateModelObj}) {
    return AppUpdateState(
      appUpdateModelObj: appUpdateModelObj ?? this.appUpdateModelObj,
    );
  }
}
