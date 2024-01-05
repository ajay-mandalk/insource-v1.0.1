import '../../../core/app_export.dart';

/// This class is used in the [framelist_item_widget] screen.
class FramelistItemModel {
  FramelistItemModel({
    this.component,
    this.id,
  }) {
    component = component ?? ImageConstant.imgComponent1;
    id = id ?? "";
  }

  String? component;

  String? id;
}
