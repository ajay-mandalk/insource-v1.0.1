import '../../../core/app_export.dart';

/// This class is used in the [coinlist_item_widget] screen.
class CoinlistItemModel {
  CoinlistItemModel({
    this.component,
    this.id,
  }) {
    component = component ?? ImageConstant.imgComponent1;
    id = id ?? "";
  }

  String? component;

  String? id;
}
