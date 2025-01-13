import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/user_w_username/user_w_username.dart';

@immutable
base class ListUserWUsername<T extends UserWUsername> extends BaseListModel<T> {
  const ListUserWUsername(super.listModel);

  @override
  ListUserWUsername<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T itemModel in listModel) {
      newListModel.add(itemModel.clone() as T);
    }
    return ListUserWUsername<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListUserWUsername(listModel: [$strListModel])";
  }
}