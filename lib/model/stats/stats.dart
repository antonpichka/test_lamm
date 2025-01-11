import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/season/season.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class Stats extends BaseModel {
  final User user;
  final Season season;
  final int gameMatchesWon;
  final int gameMatchesLost;
  final int points;

  const Stats(super.uniqueId, this.user, this.season, this.gameMatchesWon, this.gameMatchesLost, this.points);

  @override
  Stats clone() => Stats(uniqueId, user.clone(), season.clone(), gameMatchesWon, gameMatchesLost, points);

  @override
  String toString() {
    return "Stats(uniqueId: $uniqueId, user: $user, season: $season, gameMatchesWon: $gameMatchesWon, gameMatchesLost: $gameMatchesLost, points: $points)";
  }
}