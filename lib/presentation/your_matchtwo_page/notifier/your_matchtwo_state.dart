// ignore_for_file: must_be_immutable

part of 'your_matchtwo_notifier.dart';

/// Represents the state of YourMatchtwo in the application.
class YourMatchtwoState extends Equatable {
  YourMatchtwoState({this.yourMatchtwoModelObj});

  YourMatchtwoModel? yourMatchtwoModelObj;

  @override
  List<Object?> get props => [
        yourMatchtwoModelObj,
      ];

  YourMatchtwoState copyWith({YourMatchtwoModel? yourMatchtwoModelObj}) {
    return YourMatchtwoState(
      yourMatchtwoModelObj: yourMatchtwoModelObj ?? this.yourMatchtwoModelObj,
    );
  }
}
