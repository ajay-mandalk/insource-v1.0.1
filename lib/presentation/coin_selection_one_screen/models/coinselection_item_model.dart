import '../../../core/app_export.dart';

/// This class is used in the [coinselection_item_widget] screen.
class CoinselectionItemModel {
  CoinselectionItemModel({
    this.image,
    this.btcText,
    this.bitcoinText,
    this.priceText,
    this.percentageText,
    this.longText,
    this.shortText,
    this.id,
  }) {
    image = image ?? ImageConstant.imgComponent1;
    btcText = btcText ?? "BTC";
    bitcoinText = bitcoinText ?? "Bitcoin ";
    priceText = priceText ?? "30,588";
    percentageText = percentageText ?? "1.89%";
    longText = longText ?? "long";
    shortText = shortText ?? "short";
    id = id ?? "";
  }

  String? image;

  String? btcText;

  String? bitcoinText;

  String? priceText;

  String? percentageText;

  String? longText;

  String? shortText;

  String? id;
}
