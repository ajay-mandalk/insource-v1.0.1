import '../../../core/app_export.dart';

/// This class is used in the [frame_item_widget] screen.
class FrameItemModel {
  FrameItemModel({
    this.message,
    this.message1,
    this.id,
  }) {
    message = message ?? ImageConstant.imgComments;
    message1 = message1 ?? "Message";
    id = id ?? "";
  }

  String? message;

  String? message1;

  String? id;
}
