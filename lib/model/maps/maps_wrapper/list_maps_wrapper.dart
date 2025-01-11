import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/maps/list_maps.dart';
import 'package:test_lamm/model/maps/maps.dart';
import 'package:test_lamm/model/maps/maps_wrapper/maps_wrapper.dart';

@immutable
base class ListMapsWrapper extends BaseListModelWrapper {
  const ListMapsWrapper(super.listsListObject);

  @override
  ListMaps createListModel() {
    final List<Maps> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final mapsWrapper = MapsWrapper(itemListObject);
      listModel.add(mapsWrapper.createModel());
    }
    return ListMaps(listModel);
  }
}