import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilelist_item_model.dart';
import '../models/frame_item_model.dart';
import 'package:insource/presentation/share_invite_screen/models/share_invite_model.dart';
part 'share_invite_state.dart';

final shareInviteNotifier =
    StateNotifierProvider<ShareInviteNotifier, ShareInviteState>(
  (ref) => ShareInviteNotifier(ShareInviteState(
    shareInviteModelObj: ShareInviteModel(userprofilelistItemList: [
      UserprofilelistItemModel(
          userImage: ImageConstant.imgLogoSecretpixels,
          userImage1: ImageConstant.imgMessenger,
          userName: "Subham"),
      UserprofilelistItemModel(
          userImage: ImageConstant.imgBitmap, userName: "SImran"),
      UserprofilelistItemModel(
          userImage: ImageConstant.imgBitmap60x60, userName: "Amiya"),
      UserprofilelistItemModel(
          userImage1: ImageConstant.imgVolume, userName: "Subhashree")
    ], frameItemList: [
      FrameItemModel(message: ImageConstant.imgComments, message1: "Message"),
      FrameItemModel(message: ImageConstant.imgGmail, message1: "Gmail"),
      FrameItemModel(
          message: ImageConstant.imgVolumeGreenA700, message1: "Whatsapp"),
      FrameItemModel(message1: "Messenger")
    ]),
  )),
);

/// A notifier that manages the state of a ShareInvite according to the event that is dispatched to it.
class ShareInviteNotifier extends StateNotifier<ShareInviteState> {
  ShareInviteNotifier(ShareInviteState state) : super(state) {}
}
