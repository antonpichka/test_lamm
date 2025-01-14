import 'package:test_lamm/model/search_game/search_game.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListSearchGame<T extends SearchGame> extends BaseListModel<T> {
  const ListSearchGame(super.listModel);

  @override
  ListSearchGame<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T itemModel in listModel) {
      newListModel.add(itemModel.clone() as T);
    }
    return ListSearchGame<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListSearchGame(listModel: [$strListModel])";
  }
}