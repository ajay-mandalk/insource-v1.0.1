import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/framelist_item_model.dart';
import '../models/listcoinselection_item_model.dart';
import 'package:insource/presentation/coin_selection_screen/models/coin_selection_model.dart';
part 'coin_selection_state.dart';

final coinSelectionNotifier =
    StateNotifierProvider<CoinSelectionNotifier, CoinSelectionState>(
  (ref) => CoinSelectionNotifier(CoinSelectionState(
    coinSelectionModelObj: CoinSelectionModel(framelistItemList: [
      FramelistItemModel(component: ImageConstant.imgComponent1),
      FramelistItemModel(
          component: ImageConstant.imgComponent1Primarycontainer),
      FramelistItemModel(component: ImageConstant.imgComponent1),
      FramelistItemModel(component: ImageConstant.imgComponent1Teal400),
      FramelistItemModel(component: ImageConstant.imgComponent1Lime700)
    ], listcoinselectionItemList: [
      ListcoinselectionItemModel(
          longImage: ImageConstant.imgComponent1,
          btcText: "BTC",
          bitcoinText: "Bitcoin ",
          priceText: "30,588",
          percentageText: "1.89%",
          longShortText1: "long",
          longShortText2: "short"),
      ListcoinselectionItemModel(
          longImage: ImageConstant.imgComponent1Primarycontainer,
          btcText: "DOT",
          bitcoinText: "Polkadot ",
          priceText: "5.8888",
          percentageText: "1.89%",
          longShortText1: "long",
          longShortText2: "short"),
      ListcoinselectionItemModel(
          longImage: ImageConstant.imgComponent1Teal400,
          btcText: "USDT",
          bitcoinText: "Tether ",
          priceText: "1.2889",
          percentageText: "0.89%",
          longShortText1: "long",
          longShortText2: "short"),
      ListcoinselectionItemModel(
          longImage: ImageConstant.imgComponent1Lime700,
          btcText: "DOGE",
          bitcoinText: "Dogecoin ",
          priceText: "0.7588",
          percentageText: "1.89%",
          longShortText1: "long",
          longShortText2: "short"),
      ListcoinselectionItemModel(
          longImage: ImageConstant.imgComponent1Teal400,
          btcText: "USDT",
          bitcoinText: "Tether ",
          priceText: "1.2889",
          percentageText: "0.89%",
          longShortText1: "long",
          longShortText2: "short"),
      ListcoinselectionItemModel(
          longImage: ImageConstant.imgComponent1,
          btcText: "BTC",
          bitcoinText: "Bitcoin ",
          priceText: "30,588",
          percentageText: "1.89%",
          longShortText1: "long",
          longShortText2: "short"),
      ListcoinselectionItemModel(
          longImage: ImageConstant.imgComponent1Primarycontainer,
          btcText: "DOT",
          bitcoinText: "Polkadot ",
          priceText: "5.8888",
          percentageText: "1.89%",
          longShortText1: "long",
          longShortText2: "short")
    ]),
  )),
);

/// A notifier that manages the state of a CoinSelection according to the event that is dispatched to it.
class CoinSelectionNotifier extends StateNotifier<CoinSelectionState> {
  CoinSelectionNotifier(CoinSelectionState state) : super(state) {}
}
