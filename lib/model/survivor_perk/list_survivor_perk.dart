import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/survivor_perk/survivor_perk.dart';

@immutable
base class ListSurvivorPerk<T extends SurvivorPerk> extends BaseListModel<T> {
  const ListSurvivorPerk(super.listModel);

  @override
  ListSurvivorPerk<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T itemModel in listModel) {
      newListModel.add(itemModel.clone() as T);
    }
    return ListSurvivorPerk<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListSurvivorPerk(listModel: [$strListModel])";
  }
}