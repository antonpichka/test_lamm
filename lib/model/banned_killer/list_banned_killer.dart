import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/banned_killer/banned_killer.dart';

@immutable
base class ListBannedKiller<T extends BannedKiller> extends BaseListModel<T> {
  const ListBannedKiller(super.listModel);

  @override
  ListBannedKiller<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T itemModel in listModel) {
      newListModel.add(itemModel.clone() as T);
    }
    return ListBannedKiller<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListBannedKiller(listModel: [$strListModel])";
  }
}