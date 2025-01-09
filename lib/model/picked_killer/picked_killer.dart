import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/banned_maps/list_banned_maps.dart';
import 'package:test_lamm/model/killer/killer.dart';
import 'package:test_lamm/model/picked_killer_perk/list_picked_killer_perk.dart';
import 'package:test_lamm/model/picked_maps/picked_maps.dart';
import 'package:test_lamm/model/picked_survivor_perk/list_picked_survivor_perk.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class PickedKiller extends BaseModel {
  final Killer killer;
  final DateTime creationAt;
  final User user;
  final PickedMaps pickedMaps;
  final ListBannedMaps listBannedMaps;
  final ListPickedKillerPerk listPickedKillerPerk;
  final ListPickedSurvivorPerk listPickedSurvivorPerk;

  const PickedKiller(super.uniqueId, this.killer, this.creationAt, this.user, this.pickedMaps, this.listBannedMaps, this.listPickedKillerPerk, this.listPickedSurvivorPerk);

  @override
  PickedKiller clone() {
    return PickedKiller(uniqueId, killer.clone(), creationAt, user.clone(), pickedMaps.clone(), listBannedMaps.clone(), listPickedKillerPerk.clone(), listPickedSurvivorPerk.clone());
  }

  @override
  String toString() {
    return "PickedKiller(uniqueId: $uniqueId, killer: $killer, creationAt: $creationAt, user: $user, pickedMaps: $pickedMaps, listBannedMaps: $listBannedMaps, listPickedKillerPerk: $listPickedKillerPerk, listPickedSurvivorPerk: $listPickedSurvivorPerk)";
  }
}