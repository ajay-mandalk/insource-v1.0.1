import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy2_item_widget] screen.
class Viewhierarchy2ItemModel {
  Viewhierarchy2ItemModel({
    this.one,
    this.text,
    this.text1,
    this.id,
  }) {
    one = one ?? "#1";
    text = text ?? "GOPI";
    text1 = text1 ?? "+9.77%";
    id = id ?? "";
  }

  String? one;

  String? text;

  String? text1;

  String? id;
}
