// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'carosol_item_model.dart';
import '../../../core/app_export.dart';
import 'multiplayer_item_model.dart';
import 'contestcard_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.carosolItemList = const [],
    this.multiplayerItemList = const [],
    this.contestcardItemList = const [],
  }) {}

  List<CarosolItemModel> carosolItemList;

  List<MultiplayerItemModel> multiplayerItemList;

  List<ContestcardItemModel> contestcardItemList;

  HomeModel copyWith({
    List<CarosolItemModel>? carosolItemList,
    List<MultiplayerItemModel>? multiplayerItemList,
    List<ContestcardItemModel>? contestcardItemList,
  }) {
    return HomeModel(
      carosolItemList: carosolItemList ?? this.carosolItemList,
      multiplayerItemList: multiplayerItemList ?? this.multiplayerItemList,
      contestcardItemList: contestcardItemList ?? this.contestcardItemList,
    );
  }

  @override
  List<Object?> get props =>
      [carosolItemList, multiplayerItemList, contestcardItemList];
}
