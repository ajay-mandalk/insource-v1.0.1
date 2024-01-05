import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/coinlist_item_model.dart';
import '../models/coinselection_item_model.dart';
import 'package:insource/presentation/coin_selection_one_screen/models/coin_selection_one_model.dart';
part 'coin_selection_one_state.dart';

final coinSelectionOneNotifier =
    StateNotifierProvider<CoinSelectionOneNotifier, CoinSelectionOneState>(
  (ref) => CoinSelectionOneNotifier(CoinSelectionOneState(
    coinSelectionOneModelObj: CoinSelectionOneModel(coinlistItemList: [
      CoinlistItemModel(component: ImageConstant.imgComponent1),
      CoinlistItemModel(component: ImageConstant.imgComponent1Primarycontainer),
      CoinlistItemModel(component: ImageConstant.imgComponent1),
      CoinlistItemModel(component: ImageConstant.imgComponent1Teal400),
      CoinlistItemModel(component: ImageConstant.imgComponent1Lime700)
    ], coinselectionItemList: [
      CoinselectionItemModel(
          image: ImageConstant.imgComponent1,
          btcText: "BTC",
          bitcoinText: "Bitcoin ",
          priceText: "30,588",
          percentageText: "1.89%",
          longText: "long",
          shortText: "short"),
      CoinselectionItemModel(
          image: ImageConstant.imgComponent1Primarycontainer,
          btcText: "DOT",
          bitcoinText: "Polkadot ",
          priceText: "5.8888",
          percentageText: "1.89%",
          longText: "long",
          shortText: "short"),
      CoinselectionItemModel(
          image: ImageConstant.imgComponent1Teal400,
          btcText: "USDT",
          bitcoinText: "Tether ",
          priceText: "1.2889",
          percentageText: "0.89%",
          longText: "long",
          shortText: "short"),
      CoinselectionItemModel(
          image: ImageConstant.imgComponent1Lime700,
          btcText: "DOGE",
          bitcoinText: "Dogecoin ",
          priceText: "0.7588",
          percentageText: "1.89%",
          longText: "long",
          shortText: "short"),
      CoinselectionItemModel(
          image: ImageConstant.imgComponent1Teal400,
          btcText: "USDT",
          bitcoinText: "Tether ",
          priceText: "1.2889",
          percentageText: "0.89%",
          longText: "long",
          shortText: "short"),
      CoinselectionItemModel(
          image: ImageConstant.imgComponent1,
          btcText: "BTC",
          bitcoinText: "Bitcoin ",
          priceText: "30,588",
          percentageText: "1.89%",
          longText: "long",
          shortText: "short"),
      CoinselectionItemModel(
          image: ImageConstant.imgComponent1Primarycontainer,
          btcText: "DOT",
          bitcoinText: "Polkadot ",
          priceText: "5.8888",
          percentageText: "1.89%",
          longText: "long",
          shortText: "short")
    ]),
  )),
);

/// A notifier that manages the state of a CoinSelectionOne according to the event that is dispatched to it.
class CoinSelectionOneNotifier extends StateNotifier<CoinSelectionOneState> {
  CoinSelectionOneNotifier(CoinSelectionOneState state) : super(state) {}
}
