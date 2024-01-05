import '../../../core/app_export.dart';

/// This class is used in the [componenttwo_item_widget] screen.
class ComponenttwoItemModel {
  ComponenttwoItemModel({
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
