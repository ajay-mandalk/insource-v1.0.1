import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.userImage,
    this.userImage1,
    this.userName,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgLogoSecretpixels;
    userImage1 = userImage1 ?? ImageConstant.imgMessenger;
    userName = userName ?? "Subham";
    id = id ?? "";
  }

  String? userImage;

  String? userImage1;

  String? userName;

  String? id;
}
