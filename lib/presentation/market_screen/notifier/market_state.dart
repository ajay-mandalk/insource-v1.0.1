// ignore_for_file: must_be_immutable

part of 'market_notifier.dart';

/// Represents the state of Market in the application.
class MarketState extends Equatable {
  MarketState({this.marketModelObj});

  MarketModel? marketModelObj;

  @override
  List<Object?> get props => [
        marketModelObj,
      ];

  MarketState copyWith({MarketModel? marketModelObj}) {
    return MarketState(
      marketModelObj: marketModelObj ?? this.marketModelObj,
    );
  }
}
