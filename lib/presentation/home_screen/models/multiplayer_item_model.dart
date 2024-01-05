import '../../../core/app_export.dart';

/// This class is used in the [multiplayer_item_widget] screen.
class MultiplayerItemModel {
  MultiplayerItemModel({
    this.multiplayerIcon,
    this.multiplayerText,
    this.id,
  }) {
    multiplayerIcon = multiplayerIcon ?? ImageConstant.imgMultiplayerIcon;
    multiplayerText = multiplayerText ?? "multiplayer";
    id = id ?? "";
  }

  String? multiplayerIcon;

  String? multiplayerText;

  String? id;
}
