// ignore_for_file: must_be_immutable

part of 'setting_notifier.dart';

/// Represents the state of Setting in the application.
class SettingState extends Equatable {
  SettingState({this.settingModelObj});

  SettingModel? settingModelObj;

  @override
  List<Object?> get props => [
        settingModelObj,
      ];

  SettingState copyWith({SettingModel? settingModelObj}) {
    return SettingState(
      settingModelObj: settingModelObj ?? this.settingModelObj,
    );
  }
}
