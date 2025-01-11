import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/picked_killer_perk/list_picked_killer_perk.dart';
import 'package:test_lamm/model/picked_killer_perk/picked_killer_perk.dart';
import 'package:test_lamm/model/picked_killer_perk/picked_killer_perk_wrapper/picked_killer_perk_wrapper.dart';

@immutable
base class ListPickedKillerPerkWrapper extends BaseListModelWrapper {
  const ListPickedKillerPerkWrapper(super.listsListObject);

  @override
  ListPickedKillerPerk createListModel() {
    final List<PickedKillerPerk> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final pickedKillerPerkWrapper = PickedKillerPerkWrapper(itemListObject);
      listModel.add(pickedKillerPerkWrapper.createModel());
    }
    return ListPickedKillerPerk(listModel);
  }
}