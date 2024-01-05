import '../../../core/app_export.dart';

/// This class is used in the [carosol_item_widget] screen.
class CarosolItemModel {
  CarosolItemModel({this.id}) {
    id = id ?? "";
  }

  String? id;
}
