// ignore_for_file: must_be_immutable

part of 'kyctwo_notifier.dart';

/// Represents the state of Kyctwo in the application.
class KyctwoState extends Equatable {
  KyctwoState({
    this.iconCheck = false,
    this.kyctwoModelObj,
  });

  KyctwoModel? kyctwoModelObj;

  bool iconCheck;

  @override
  List<Object?> get props => [
        iconCheck,
        kyctwoModelObj,
      ];

  KyctwoState copyWith({
    bool? iconCheck,
    KyctwoModel? kyctwoModelObj,
  }) {
    return KyctwoState(
      iconCheck: iconCheck ?? this.iconCheck,
      kyctwoModelObj: kyctwoModelObj ?? this.kyctwoModelObj,
    );
  }
}
