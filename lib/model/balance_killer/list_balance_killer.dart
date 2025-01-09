import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/balance_killer/balance_killer.dart';

@immutable
base class ListBalanceKiller<T extends BalanceKiller> extends BaseListModel<T> {
  const ListBalanceKiller(super.listModel);

  @override
  ListBalanceKiller<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T itemModel in listModel) {
      newListModel.add(itemModel.clone() as T);
    }
    return ListBalanceKiller<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListBalanceKiller(listModel: [$strListModel])";
  }
}