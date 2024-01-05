// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'framelist_item_model.dart';
import 'listcoinselection_item_model.dart';

/// This class defines the variables used in the [coin_selection_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CoinSelectionModel extends Equatable {
  CoinSelectionModel({
    this.framelistItemList = const [],
    this.listcoinselectionItemList = const [],
  }) {}

  List<FramelistItemModel> framelistItemList;

  List<ListcoinselectionItemModel> listcoinselectionItemList;

  CoinSelectionModel copyWith({
    List<FramelistItemModel>? framelistItemList,
    List<ListcoinselectionItemModel>? listcoinselectionItemList,
  }) {
    return CoinSelectionModel(
      framelistItemList: framelistItemList ?? this.framelistItemList,
      listcoinselectionItemList:
          listcoinselectionItemList ?? this.listcoinselectionItemList,
    );
  }

  @override
  List<Object?> get props => [framelistItemList, listcoinselectionItemList];
}
