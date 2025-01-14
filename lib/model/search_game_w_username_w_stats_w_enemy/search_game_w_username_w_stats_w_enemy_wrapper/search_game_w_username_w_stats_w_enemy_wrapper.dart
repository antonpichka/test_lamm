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
            listObject[0],
            listObject[1],
            User(
                listObject[2],
                listObject[3],
                listObject[4]),
            User(
                listObject[5],
                listObject[6],
                listObject[7]),
            listObject[8],
            listObject[9],
            listObject[10]),
        listObject[11],
        Stats(
            listObject[12],
            User(
                listObject[13],
                listObject[14],
                listObject[15]),
            Season(
                listObject[16],
                listObject[17],
                listObject[18],
                listObject[19]),
            listObject[20],
            listObject[21],
            listObject[22]));
  }
}