// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userprofilelist_item_model.dart';
import 'frame_item_model.dart';

/// This class defines the variables used in the [share_invite_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ShareInviteModel extends Equatable {
  ShareInviteModel({
    this.userprofilelistItemList = const [],
    this.frameItemList = const [],
  }) {}

  List<UserprofilelistItemModel> userprofilelistItemList;

  List<FrameItemModel> frameItemList;

  ShareInviteModel copyWith({
    List<UserprofilelistItemModel>? userprofilelistItemList,
    List<FrameItemModel>? frameItemList,
  }) {
    return ShareInviteModel(
      userprofilelistItemList:
          userprofilelistItemList ?? this.userprofilelistItemList,
      frameItemList: frameItemList ?? this.frameItemList,
    );
  }

  @override
  List<Object?> get props => [userprofilelistItemList, frameItemList];
}
