import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/banned_maps/banned_maps.dart';

@immutable
base class ListBannedMaps<T extends BannedMaps> extends BaseListModel<T> {
  const ListBannedMaps(super.listModel);

  @override
  ListBannedMaps<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T itemModel in listModel) {
      newListModel.add(itemModel.clone() as T);
    }
    return ListBannedMaps<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListBannedMaps(listModel: [$strListModel])";
  }
}