import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/maps/maps.dart';
import 'package:test_lamm/model/picked_maps/picked_maps.dart';

@immutable
base class PickedMapsWrapper extends BaseModelWrapper {
  const PickedMapsWrapper(super.listObject);

  @override
  PickedMaps createModel() {
    return PickedMaps(
        listObject[0],
        Maps(
            listObject[1][0],
            listObject[1][1],
            listObject[1][2]));
  }
}