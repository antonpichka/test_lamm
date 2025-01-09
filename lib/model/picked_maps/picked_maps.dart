import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/maps/maps.dart';

@immutable
base class PickedMaps extends BaseModel {
  final Maps maps;

  const PickedMaps(super.uniqueId, this.maps);

  @override
  PickedMaps clone() {
    return PickedMaps(uniqueId, maps.clone());
  }

  @override
  String toString() {
    return "PickedMaps(uniqueId: $uniqueId, maps: $maps)";
  }
}