// ignore_for_file: must_be_immutable

part of 'no_result_notifier.dart';

/// Represents the state of NoResult in the application.
class NoResultState extends Equatable {
  NoResultState({this.noResultModelObj});

  NoResultModel? noResultModelObj;

  @override
  List<Object?> get props => [
        noResultModelObj,
      ];

  NoResultState copyWith({NoResultModel? noResultModelObj}) {
    return NoResultState(
      noResultModelObj: noResultModelObj ?? this.noResultModelObj,
    );
  }
}
