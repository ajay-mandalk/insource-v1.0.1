import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy1_item_widget] screen.
class Viewhierarchy1ItemModel {
  Viewhierarchy1ItemModel({
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
