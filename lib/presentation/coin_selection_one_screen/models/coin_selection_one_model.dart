// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'coinlist_item_model.dart';
import 'coinselection_item_model.dart';

/// This class defines the variables used in the [coin_selection_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CoinSelectionOneModel extends Equatable {
  CoinSelectionOneModel({
    this.coinlistItemList = const [],
    this.coinselectionItemList = const [],
  }) {}

  List<CoinlistItemModel> coinlistItemList;

  List<CoinselectionItemModel> coinselectionItemList;

  CoinSelectionOneModel copyWith({
    List<CoinlistItemModel>? coinlistItemList,
    List<CoinselectionItemModel>? coinselectionItemList,
  }) {
    return CoinSelectionOneModel(
      coinlistItemList: coinlistItemList ?? this.coinlistItemList,
      coinselectionItemList:
          coinselectionItemList ?? this.coinselectionItemList,
    );
  }

  @override
  List<Object?> get props => [coinlistItemList, coinselectionItemList];
}
