import '../../../core/app_export.dart';

/// This class is used in the [rankingrow_item_widget] screen.
class RankingrowItemModel {
  RankingrowItemModel({
    this.rank,
    this.range,
    this.amount,
    this.id,
  }) {
    rank = rank ?? "#2";
    range = range ?? "2 to 5";
    amount = amount ?? "Rs 2,000";
    id = id ?? "";
  }

  String? rank;

  String? range;

  String? amount;

  String? id;
}
