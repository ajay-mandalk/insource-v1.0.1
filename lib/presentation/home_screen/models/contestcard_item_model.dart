import '../../../core/app_export.dart';

/// This class is used in the [contestcard_item_widget] screen.
class ContestcardItemModel {
  ContestcardItemModel({
    this.timer,
    this.title,
    this.prize,
    this.spots,
    this.winnerText,
    this.joinButton,
    this.entryFee,
    this.spotsLeft,
    this.id,
  }) {
    timer = timer ?? "27m 54s";
    title = title ?? "MEGA CONTEST";
    prize = prize ?? "1.5 CRORE";
    spots = spots ?? "50,000 spots ";
    winnerText = winnerText ?? "20,000 Winners";
    joinButton = joinButton ?? "JOIN";
    entryFee = entryFee ?? "Entry fee : free";
    spotsLeft = spotsLeft ?? "20% Left";
    id = id ?? "";
  }

  String? timer;

  String? title;

  String? prize;

  String? spots;

  String? winnerText;

  String? joinButton;

  String? entryFee;

  String? spotsLeft;

  String? id;
}
