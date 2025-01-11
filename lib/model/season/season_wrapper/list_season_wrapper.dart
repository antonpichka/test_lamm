import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/season/season_wrapper/season_wrapper.dart';
import 'package:test_lamm/model/season/list_season.dart';
import 'package:test_lamm/model/season/season.dart';

@immutable
base class ListSeasonWrapper extends BaseListModelWrapper {
  const ListSeasonWrapper(super.listsListObject);

  @override
  ListSeason createListModel() {
    final List<Season> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final seasonWrapper = SeasonWrapper(itemListObject);
      listModel.add(seasonWrapper.createModel());
    }
    return ListSeason(listModel);
  }
}