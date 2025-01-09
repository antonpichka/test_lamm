import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/killer_perk/killer_perk.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class PickedKillerPerk extends BaseModel {
  final KillerPerk killerPerk;
  final User user;

  const PickedKillerPerk(super.uniqueId, this.killerPerk, this.user);

  @override
  PickedKillerPerk clone() {
    return PickedKillerPerk(uniqueId, killerPerk.clone(), user.clone());
  }

  @override
  String toString() {
    return "PickedKillerPerk(uniqueId: $uniqueId, killerPerk: $killerPerk, user: $user)";
  }
}