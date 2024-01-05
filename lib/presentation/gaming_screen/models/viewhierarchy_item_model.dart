import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.one,
    this.textOne,
    this.textTwo,
    this.id,
  }) {
    one = one ?? "#1";
    textOne = textOne ?? "GOPI";
    textTwo = textTwo ?? "+9.77%";
    id = id ?? "";
  }

  String? one;

  String? textOne;

  String? textTwo;

  String? id;
}
