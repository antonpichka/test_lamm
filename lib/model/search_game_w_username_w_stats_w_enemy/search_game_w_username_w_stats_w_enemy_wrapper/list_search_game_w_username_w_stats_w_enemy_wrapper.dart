import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/search_game_w_username_w_stats_w_enemy/search_game_w_username_w_stats_w_enemy_wrapper/search_game_w_username_w_stats_w_enemy_wrapper.dart';
import 'package:test_lamm/model/search_game_w_username_w_stats_w_enemy/list_search_game_w_username_w_stats_w_enemy.dart';
import 'package:test_lamm/model/search_game_w_username_w_stats_w_enemy/search_game_w_username_w_stats_w_enemy.dart';

@immutable
base class ListSearchGameWUsernameWStatsWEnemyWrapper extends BaseListModelWrapper {
  const ListSearchGameWUsernameWStatsWEnemyWrapper(super.listsListObject);

  @override
  ListSearchGameWUsernameWStatsWEnemy createListModel() {
    final List<SearchGameWUsernameWStatsWEnemy> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final searchGameWUsernameWStatsWEnemyWrapper = SearchGameWUsernameWStatsWEnemyWrapper(itemListObject);
      listModel.add(searchGameWUsernameWStatsWEnemyWrapper.createModel());
    }
    return ListSearchGameWUsernameWStatsWEnemy(listModel);
  }
}