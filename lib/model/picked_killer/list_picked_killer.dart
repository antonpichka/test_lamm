import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/picked_killer/picked_killer.dart';

@immutable
base class ListPickedKiller<T extends PickedKiller> extends BaseListModel<T> {
  const ListPickedKiller(super.listModel);

  @override
  ListPickedKiller<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T itemModel in listModel) {
      newListModel.add(itemModel.clone() as T);
    }
    return ListPickedKiller<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListPickedKiller(listModel: [$strListModel])";
  }
}