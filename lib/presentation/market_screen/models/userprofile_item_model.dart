import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.usdtImage,
    this.usdtText,
    this.tetherText,
    this.usdt,
    this.priceText,
    this.percentageText,
    this.id,
  }) {
    usdtImage = usdtImage ?? ImageConstant.imgComponent1Teal400;
    usdtText = usdtText ?? "USDT";
    tetherText = tetherText ?? "Tether ";
    usdt = usdt ?? ImageConstant.imgGraph42x100;
    priceText = priceText ?? "1.12";
    percentageText = percentageText ?? "0.09%";
    id = id ?? "";
  }

  String? usdtImage;

  String? usdtText;

  String? tetherText;

  String? usdt;

  String? priceText;

  String? percentageText;

  String? id;
}
