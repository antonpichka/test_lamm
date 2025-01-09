import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/oauth/oauth.dart';

@immutable
base class ListOAuth<T extends OAuth> extends BaseListModel<T> {
  const ListOAuth(super.listModel);

  @override
  ListOAuth<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T itemModel in listModel) {
      newListModel.add(itemModel.clone() as T);
    }
    return ListOAuth<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListOAuth(listModel: [$strListModel])";
  }
}