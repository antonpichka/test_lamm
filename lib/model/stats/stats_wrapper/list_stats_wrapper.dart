import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/stats/stats_wrapper/stats_wrapper.dart';
import 'package:test_lamm/model/stats/list_stats.dart';
import 'package:test_lamm/model/stats/stats.dart';

@immutable
base class ListStatsWrapper extends BaseListModelWrapper {
  const ListStatsWrapper(super.listsListObject);

  @override
  ListStats createListModel() {
    final List<Stats> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final statsWrapper = StatsWrapper(itemListObject);
      listModel.add(statsWrapper.createModel());
    }
    return ListStats(listModel);
  }
}