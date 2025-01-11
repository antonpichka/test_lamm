import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/killer_perk/killer_perk.dart';
import 'package:test_lamm/model/killer_perk/killer_perk_wrapper/killer_perk_wrapper.dart';
import 'package:test_lamm/model/killer_perk/list_killer_perk.dart';

@immutable
base class ListKillerPerkWrapper extends BaseListModelWrapper {
  const ListKillerPerkWrapper(super.listObject);

  @override
  ListKillerPerk createListModel() {
    final List<KillerPerk> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final killerPerkWrapper = KillerPerkWrapper(itemListObject);
      listModel.add(killerPerkWrapper.createModel());
    }
    return ListKillerPerk(listModel);
  }
}