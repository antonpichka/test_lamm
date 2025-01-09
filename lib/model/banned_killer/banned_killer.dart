import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/killer/killer.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class BannedKiller extends BaseModel {
  final Killer killer;
  final DateTime creationAt;
  final User user;

  const BannedKiller(super.uniqueId, this.killer, this.creationAt, this.user);

  @override
  BannedKiller clone() {
    return BannedKiller(uniqueId, killer.clone(), creationAt, user.clone());
  }

  @override
  String toString() {
    return "BannedKiller(uniqueId: $uniqueId, killer: $killer, creationAt: $creationAt, user: $user)";
  }
}