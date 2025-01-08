import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/killer_perk/killer_perk.dart';

@immutable
base class ListKillerPerk<T extends KillerPerk> extends BaseListModel<T> {
  const ListKillerPerk(super.listModel);

  @override
  ListKillerPerk<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T itemModel in listModel) {
      newListModel.add(itemModel.clone() as T);
    }
    return ListKillerPerk<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListKillerPerk(listModel: [$strListModel])";
  }
}