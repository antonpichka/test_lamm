import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/picked_maps/list_picked_maps.dart';
import 'package:test_lamm/model/picked_maps/picked_maps.dart';
import 'package:test_lamm/model/picked_maps/picked_maps_wrapper/picked_maps_wrapper.dart';

@immutable
base class ListPickedMapsWrapper extends BaseListModelWrapper {
  const ListPickedMapsWrapper(super.listsListObject);

  @override
  ListPickedMaps createListModel() {
    final List<PickedMaps> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final pickedMapsWrapper = PickedMapsWrapper(itemListObject);
      listModel.add(pickedMapsWrapper.createModel());
    }
    return ListPickedMaps(listModel);
  }
}