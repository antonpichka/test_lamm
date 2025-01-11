import 'package:test_lamm/model/banned_maps/banned_maps.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/maps/maps.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class BannedMapsWrapper extends BaseModelWrapper {
  const BannedMapsWrapper(super.listObject);

  @override
  BannedMaps createModel() {
    return BannedMaps(
        listObject[0],
        Maps(
            listObject[1],
            listObject[2],
            listObject[3]),
        listObject[4],
        User(
            listObject[5],
            listObject[6],
            listObject[7]));
  }
}