import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/picked_maps/picked_maps.dart';

@immutable
base class ListPickedMaps<T extends PickedMaps> extends BaseListModel<T> {
  const ListPickedMaps(super.listModel);

  @override
  ListPickedMaps<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T itemModel in listModel) {
      newListModel.add(itemModel.clone() as T);
    }
    return ListPickedMaps<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListPickedMaps(listModel: [$strListModel])";
  }
}