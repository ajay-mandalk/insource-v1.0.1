// ignore_for_file: must_be_immutable

part of 'coin_selection_notifier.dart';

/// Represents the state of CoinSelection in the application.
class CoinSelectionState extends Equatable {
  CoinSelectionState({this.coinSelectionModelObj});

  CoinSelectionModel? coinSelectionModelObj;

  @override
  List<Object?> get props => [
        coinSelectionModelObj,
      ];

  CoinSelectionState copyWith({CoinSelectionModel? coinSelectionModelObj}) {
    return CoinSelectionState(
      coinSelectionModelObj:
          coinSelectionModelObj ?? this.coinSelectionModelObj,
    );
  }
}
