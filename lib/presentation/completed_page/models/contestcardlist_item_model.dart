import '../../../core/app_export.dart';

/// This class is used in the [contestcardlist_item_widget] screen.
class ContestcardlistItemModel {
  ContestcardlistItemModel({
    this.cRORECounter,
    this.megacontest,
    this.timer,
    this.joinText,
    this.entryFeeFree,
    this.spots,
    this.spotsLeft,
    this.winnersText,
    this.youWonText,
    this.id,
  }) {
    cRORECounter = cRORECounter ?? "1.5 CRORE";
    megacontest = megacontest ?? "MEGA CONTEST";
    timer = timer ?? "27m 54s";
    joinText = joinText ?? "JOIN";
    entryFeeFree = entryFeeFree ?? "Entry fee : free";
    spots = spots ?? "50,000 spots ";
    spotsLeft = spotsLeft ?? "20% Left";
    winnersText = winnersText ?? "20,000 Winners";
    youWonText = youWonText ?? "you won";
    id = id ?? "";
  }

  String? cRORECounter;

  String? megacontest;

  String? timer;

  String? joinText;

  String? entryFeeFree;

  String? spots;

  String? spotsLeft;

  String? winnersText;

  String? youWonText;

  String? id;
}
