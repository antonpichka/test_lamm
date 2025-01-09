import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/picked_survivor_perk/picked_survivor_perk.dart';

@immutable
base class ListPickedSurvivorPerk<T extends PickedSurvivorPerk> extends BaseListModel<T> {
  const ListPickedSurvivorPerk(super.listModel);

  @override
  ListPickedSurvivorPerk<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T itemModel in listModel) {
      newListModel.add(itemModel.clone() as T);
    }
    return ListPickedSurvivorPerk<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListPickedSurvivorPerk(listModel: [$strListModel])";
  }
}