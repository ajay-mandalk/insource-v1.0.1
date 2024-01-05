// ignore_for_file: must_be_immutable

part of 'coin_selection_one_notifier.dart';

/// Represents the state of CoinSelectionOne in the application.
class CoinSelectionOneState extends Equatable {
  CoinSelectionOneState({this.coinSelectionOneModelObj});

  CoinSelectionOneModel? coinSelectionOneModelObj;

  @override
  List<Object?> get props => [
        coinSelectionOneModelObj,
      ];

  CoinSelectionOneState copyWith(
      {CoinSelectionOneModel? coinSelectionOneModelObj}) {
    return CoinSelectionOneState(
      coinSelectionOneModelObj:
          coinSelectionOneModelObj ?? this.coinSelectionOneModelObj,
    );
  }
}
