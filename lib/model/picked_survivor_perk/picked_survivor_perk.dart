import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/survivor_perk/survivor_perk.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class PickedSurvivorPerk extends BaseModel {
  final SurvivorPerk survivorPerk;
  final User user;

  const PickedSurvivorPerk(super.uniqueId, this.survivorPerk, this.user);

  @override
  PickedSurvivorPerk clone() {
    return PickedSurvivorPerk(uniqueId, survivorPerk.clone(), user.clone());
  }

  @override
  String toString() {
    return "PickedSurvivorPerk(uniqueId: $uniqueId, survivorPerk: $survivorPerk, user: $user)";
  }
}