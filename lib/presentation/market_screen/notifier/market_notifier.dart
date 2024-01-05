import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import 'package:insource/presentation/market_screen/models/market_model.dart';
part 'market_state.dart';

final marketNotifier = StateNotifierProvider<MarketNotifier, MarketState>(
  (ref) => MarketNotifier(MarketState(
    marketModelObj: MarketModel(userprofileItemList: [
      UserprofileItemModel(
          usdtImage: ImageConstant.imgComponent1Teal400,
          usdtText: "USDT",
          tetherText: "Tether ",
          usdt: ImageConstant.imgGraph42x100,
          priceText: "1.12",
          percentageText: "0.09%"),
      UserprofileItemModel(
          usdtImage: ImageConstant.imgComponent1Primarycontainer,
          usdtText: "DOT",
          tetherText: "Polkadot ",
          usdt: ImageConstant.imgGraph2,
          priceText: "5.88",
          percentageText: "4.89%"),
      UserprofileItemModel(
          usdtImage: ImageConstant.imgComponent1Lime700,
          usdtText: "DOGE",
          tetherText: "Dogecoin ",
          usdt: ImageConstant.imgGraph2,
          priceText: "0.078",
          percentageText: "0.89%"),
      UserprofileItemModel(
          usdtImage: ImageConstant.imgComponent1Lime700,
          usdtText: "DOGE",
          tetherText: "Dogecoin ",
          usdt: ImageConstant.imgGraph2,
          priceText: "0.078",
          percentageText: "0.89%"),
      UserprofileItemModel(
          usdtImage: ImageConstant.imgComponent1Teal400,
          usdtText: "USDT",
          tetherText: "Tether ",
          usdt: ImageConstant.imgGraph42x100,
          priceText: "1.12",
          percentageText: "0.09%"),
      UserprofileItemModel(
          usdtImage: ImageConstant.imgComponent1Primarycontainer,
          usdtText: "DOT",
          tetherText: "Polkadot ",
          usdt: ImageConstant.imgGraph2,
          priceText: "5.88",
          percentageText: "4.89%"),
      UserprofileItemModel(
          usdtImage: ImageConstant.imgComponent1Lime700,
          usdtText: "DOGE",
          tetherText: "Dogecoin ",
          usdt: ImageConstant.imgGraph2,
          priceText: "0.078",
          percentageText: "0.89%")
    ]),
  )),
);

/// A notifier that manages the state of a Market according to the event that is dispatched to it.
class MarketNotifier extends StateNotifier<MarketState> {
  MarketNotifier(MarketState state) : super(state) {}
}
