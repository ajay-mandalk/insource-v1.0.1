import '../../../core/app_export.dart';

/// This class is used in the [contestcard1_item_widget] screen.
class Contestcard1ItemModel {
  Contestcard1ItemModel({
    this.contestTitle,
    this.contestPrize,
    this.contestTime,
    this.entryFee,
    this.spotsAvailable,
    this.spotsLeft,
    this.winnerText,
    this.id,
  }) {
    contestTitle = contestTitle ?? "MEGA CONTEST";
    contestPrize = contestPrize ?? "1.5 CRORE";
    contestTime = contestTime ?? "27m 54s";
    entryFee = entryFee ?? "Entry fee : free";
    spotsAvailable = spotsAvailable ?? "50,000 spots ";
    spotsLeft = spotsLeft ?? "20% Left";
    winnerText = winnerText ?? "20,000 Winners";
    id = id ?? "";
  }

  String? contestTitle;

  String? contestPrize;

  String? contestTime;

  String? entryFee;

  String? spotsAvailable;

  String? spotsLeft;

  String? winnerText;

  String? id;
}
