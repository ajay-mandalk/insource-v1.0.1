// ignore_for_file: must_be_immutable

part of 'contest_detail_notifier.dart';

/// Represents the state of ContestDetail in the application.
class ContestDetailState extends Equatable {
  ContestDetailState({this.contestDetailModelObj});

  ContestDetailModel? contestDetailModelObj;

  @override
  List<Object?> get props => [
        contestDetailModelObj,
      ];

  ContestDetailState copyWith({ContestDetailModel? contestDetailModelObj}) {
    return ContestDetailState(
      contestDetailModelObj:
          contestDetailModelObj ?? this.contestDetailModelObj,
    );
  }
}
