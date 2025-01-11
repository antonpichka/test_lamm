import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/survivor_perk/survivor_perk_wrapper/survivor_perk_wrapper.dart';
import 'package:test_lamm/model/survivor_perk/list_survivor_perk.dart';
import 'package:test_lamm/model/survivor_perk/survivor_perk.dart';

@immutable
base class ListSurvivorPerkWrapper extends BaseListModelWrapper {
  const ListSurvivorPerkWrapper(super.listsListObject);

  @override
  ListSurvivorPerk createListModel() {
    final List<SurvivorPerk> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final survivorPerkWrapper = SurvivorPerkWrapper(itemListObject);
      listModel.add(survivorPerkWrapper.createModel());
    }
    return ListSurvivorPerk(listModel);
  }
}