// ignore_for_file: must_be_immutable

part of 'leaderboard_notifier.dart';

/// Represents the state of Leaderboard in the application.
class LeaderboardState extends Equatable {
  LeaderboardState({this.leaderboardModelObj});

  LeaderboardModel? leaderboardModelObj;

  @override
  List<Object?> get props => [
        leaderboardModelObj,
      ];

  LeaderboardState copyWith({LeaderboardModel? leaderboardModelObj}) {
    return LeaderboardState(
      leaderboardModelObj: leaderboardModelObj ?? this.leaderboardModelObj,
    );
  }
}
