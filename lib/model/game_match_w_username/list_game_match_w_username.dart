import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/game_match_w_username/game_match_w_username.dart';

@immutable
base class ListGameMatchWUsername<T extends GameMatchWUsername> extends BaseListModel<T> {
  const ListGameMatchWUsername(super.listModel);

  @override
  ListGameMatchWUsername<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T itemModel in listModel) {
      newListModel.add(itemModel.clone() as T);
    }
    return ListGameMatchWUsername<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListGameMatchWUsername(listModel: [$strListModel])";
  }
}