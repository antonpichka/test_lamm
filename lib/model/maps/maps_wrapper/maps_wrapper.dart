import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/maps/maps.dart';

@immutable
base class MapsWrapper extends BaseModelWrapper {
  const MapsWrapper(super.listObject);

  @override
  Maps createModel() {
    return Maps(
        listObject[0],
        listObject[1],
        listObject[2]);
  }
}