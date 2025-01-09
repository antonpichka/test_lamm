import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/maps/maps.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class BannedMaps extends BaseModel {
  final Maps maps;
  final DateTime creationAt;
  final User user;

  const BannedMaps(super.uniqueId, this.maps, this.creationAt, this.user);

  @override
  BannedMaps clone() {
    return BannedMaps(uniqueId, maps.clone(), creationAt, user.clone());
  }

  @override
  String toString() {
    return "BannedMaps(uniqueId: $uniqueId, maps: $maps, creationAt: $creationAt, user: $user)";
  }
}