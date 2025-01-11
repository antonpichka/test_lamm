import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/picked_survivor_perk/list_picked_survivor_perk.dart';
import 'package:test_lamm/model/picked_survivor_perk/picked_survivor_perk.dart';
import 'package:test_lamm/model/picked_survivor_perk/picked_survivor_perk_wrapper/picked_survivor_perk_wrapper.dart';

@immutable
base class ListPickedSurvivorPerkWrapper extends BaseListModelWrapper {
  const ListPickedSurvivorPerkWrapper(super.listsListObject);

  @override
  ListPickedSurvivorPerk createListModel() {
    final List<PickedSurvivorPerk> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final pickedSurvivorPerkWrapper = PickedSurvivorPerkWrapper(itemListObject);
      listModel.add(pickedSurvivorPerkWrapper.createModel());
    }
    return ListPickedSurvivorPerk(listModel);
  }
}