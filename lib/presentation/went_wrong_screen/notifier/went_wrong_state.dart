// ignore_for_file: must_be_immutable

part of 'went_wrong_notifier.dart';

/// Represents the state of WentWrong in the application.
class WentWrongState extends Equatable {
  WentWrongState({this.wentWrongModelObj});

  WentWrongModel? wentWrongModelObj;

  @override
  List<Object?> get props => [
        wentWrongModelObj,
      ];

  WentWrongState copyWith({WentWrongModel? wentWrongModelObj}) {
    return WentWrongState(
      wentWrongModelObj: wentWrongModelObj ?? this.wentWrongModelObj,
    );
  }
}
