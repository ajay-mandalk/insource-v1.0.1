import '../../../core/app_export.dart';

/// This class is used in the [listcoinselection_item_widget] screen.
class ListcoinselectionItemModel {
  ListcoinselectionItemModel({
    this.longImage,
    this.btcText,
    this.bitcoinText,
    this.priceText,
    this.percentageText,
    this.longShortText1,
    this.longShortText2,
    this.id,
  }) {
    longImage = longImage ?? ImageConstant.imgComponent1;
    btcText = btcText ?? "BTC";
    bitcoinText = bitcoinText ?? "Bitcoin ";
    priceText = priceText ?? "30,588";
    percentageText = percentageText ?? "1.89%";
    longShortText1 = longShortText1 ?? "long";
    longShortText2 = longShortText2 ?? "short";
    id = id ?? "";
  }

  String? longImage;

  String? btcText;

  String? bitcoinText;

  String? priceText;

  String? percentageText;

  String? longShortText1;

  String? longShortText2;

  String? id;
}
