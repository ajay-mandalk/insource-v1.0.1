// ignore_for_file: must_be_immutable

part of 'completed_notifier.dart';

/// Represents the state of Completed in the application.
class CompletedState extends Equatable {
  CompletedState({this.completedModelObj});

  CompletedModel? completedModelObj;

  @override
  List<Object?> get props => [
        completedModelObj,
      ];

  CompletedState copyWith({CompletedModel? completedModelObj}) {
    return CompletedState(
      completedModelObj: completedModelObj ?? this.completedModelObj,
    );
  }
}
