import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/killer/killer.dart';
import 'package:test_lamm/model/killer_perk/list_killer_perk.dart';
import 'package:test_lamm/model/maps/list_maps.dart';
import 'package:test_lamm/model/survivor_perk/list_survivor_perk.dart';

@immutable
base class BalanceKiller extends BaseModel {
  final Killer killer;
  final ListMaps listMaps;
  final ListKillerPerk listKillerPerk;
  final ListSurvivorPerk listSurvivorPerk;
  final int requiredNumberOfSelectedKillerPerk;
  final int requiredNumberOfSelectedSurvivorPerk;

  const BalanceKiller(super.uniqueId, this.killer, this.listMaps, this.listKillerPerk, this.listSurvivorPerk, this.requiredNumberOfSelectedKillerPerk, this.requiredNumberOfSelectedSurvivorPerk);

  @override
  BalanceKiller clone() {
    return BalanceKiller(uniqueId, killer.clone(), listMaps.clone(), listKillerPerk.clone(), listSurvivorPerk.clone(), requiredNumberOfSelectedKillerPerk, requiredNumberOfSelectedSurvivorPerk);
  }

  @override
  String toString() {
    return "BalanceKiller(uniqueId: $uniqueId, killer: $killer, listMaps: $listMaps, listKillerPerk: $listKillerPerk, listSurvivorPerk: $listSurvivorPerk, requiredNumberOfSelectedKillerPerk: $requiredNumberOfSelectedKillerPerk, requiredNumberOfSelectedSurvivorPerk: $requiredNumberOfSelectedSurvivorPerk)";
  }

  @nonVirtual
  bool isWhereLengthNotEqualsParametersListKillerPerkAndRequiredNumberOfSelectedKillerPerk() {
    return listKillerPerk.listModel.length != requiredNumberOfSelectedKillerPerk;
  }

  @nonVirtual
  bool isWhereLengthNotEqualsParametersListSurvivorPerkAndRequiredNumberOfSelectedSurvivorPerk() {
    return listSurvivorPerk.listModel.length != requiredNumberOfSelectedSurvivorPerk;
  }

  @nonVirtual
  bool isWhereLengthEqualsParametersListKillerPerkAndRequiredNumberOfSelectedKillerPerk() {
    return listKillerPerk.listModel.length == requiredNumberOfSelectedKillerPerk;
  }

  @nonVirtual
  bool isWhereLengthEqualsParametersListSurvivorPerkAndRequiredNumberOfSelectedSurvivorPerk() {
    return listSurvivorPerk.listModel.length == requiredNumberOfSelectedSurvivorPerk;
  }
}