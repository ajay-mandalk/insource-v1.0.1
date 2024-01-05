// ignore_for_file: must_be_immutable

part of 'upcoming_notifier.dart';

/// Represents the state of Upcoming in the application.
class UpcomingState extends Equatable {
  UpcomingState({this.upcomingModelObj});

  UpcomingModel? upcomingModelObj;

  @override
  List<Object?> get props => [
        upcomingModelObj,
      ];

  UpcomingState copyWith({UpcomingModel? upcomingModelObj}) {
    return UpcomingState(
      upcomingModelObj: upcomingModelObj ?? this.upcomingModelObj,
    );
  }
}
