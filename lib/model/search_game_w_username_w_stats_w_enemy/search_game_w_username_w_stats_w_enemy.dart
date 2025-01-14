import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/search_game/search_game.dart';
import 'package:test_lamm/model/stats/stats.dart';

@immutable
base class SearchGameWUsernameWStatsWEnemy extends BaseModel {
  final SearchGame searchGame;
  final String usernameWEnemy;
  final Stats statsWEnemy;

  SearchGameWUsernameWStatsWEnemy(this.searchGame, this.usernameWEnemy, this.statsWEnemy) : super(searchGame.uniqueId);

  @override
  SearchGameWUsernameWStatsWEnemy clone() => SearchGameWUsernameWStatsWEnemy(searchGame.clone(),usernameWEnemy,statsWEnemy.clone());

  @override
  String toString() {
    return "SearchGameWUsernameWStatsWEnemy(uniqueId: $uniqueId, searchGame: $searchGame, usernameWEnemy: $usernameWEnemy, statsWEnemy: $statsWEnemy)";
  }
}