import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/search_game/search_game.dart';
import 'package:test_lamm/model/search_game_w_username_w_stats_w_enemy/search_game_w_username_w_stats_w_enemy.dart';
import 'package:test_lamm/model/season/season.dart';
import 'package:test_lamm/model/stats/stats.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class SearchGameWUsernameWStatsWEnemyWrapper extends BaseModelWrapper {
  const SearchGameWUsernameWStatsWEnemyWrapper(super.listObject);

  @override
  SearchGameWUsernameWStatsWEnemy createModel() {
    return SearchGameWUsernameWStatsWEnemy(
        SearchGame(
            listObject[0][0],
            listObject[0][1],
            User(
                listObject[0][2][0],
                listObject[0][2][1],
                listObject[0][2][2]),
            User(
                listObject[0][3][0],
                listObject[0][3][1],
                listObject[0][3][2]),
            listObject[0][4],
            listObject[0][5],
            listObject[0][6]),
        listObject[1],
        Stats(
            listObject[2][0],
            User(
                listObject[2][1][0],
                listObject[2][1][1],
                listObject[2][1][2]),
            Season(
                listObject[2][2][0],
                listObject[2][2][1],
                listObject[2][2][2],
                listObject[2][2][3]),
            listObject[2][3],
            listObject[2][4],
            listObject[2][5]));
  }
}