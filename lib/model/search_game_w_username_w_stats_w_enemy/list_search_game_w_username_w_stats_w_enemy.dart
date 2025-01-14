import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/search_game_w_username_w_stats_w_enemy/search_game_w_username_w_stats_w_enemy.dart';

@immutable
base class ListSearchGameWUsernameWStatsWEnemy<T extends SearchGameWUsernameWStatsWEnemy> extends BaseListModel<T> {
  const ListSearchGameWUsernameWStatsWEnemy(super.listModel);

  @override
  ListSearchGameWUsernameWStatsWEnemy<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T itemModel in listModel) {
      newListModel.add(itemModel.clone() as T);
    }
    return ListSearchGameWUsernameWStatsWEnemy<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListSearchGameWUsernameWStatsWEnemy(listModel: [$strListModel])";
  }
}