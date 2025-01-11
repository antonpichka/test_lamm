import 'package:test_lamm/model/balance_killer/balance_killer.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/killer/killer.dart';
import 'package:test_lamm/model/killer_perk/killer_perk.dart';
import 'package:test_lamm/model/killer_perk/list_killer_perk.dart';
import 'package:test_lamm/model/maps/list_maps.dart';
import 'package:test_lamm/model/maps/maps.dart';
import 'package:test_lamm/model/survivor_perk/list_survivor_perk.dart';
import 'package:test_lamm/model/survivor_perk/survivor_perk.dart';

@immutable
base class BalanceKillerWrapper extends BaseModelWrapper {
  const BalanceKillerWrapper(super.listObject);

  @override
  BalanceKiller createModel() {
    final List<Maps> listMaps = List.empty(growable: true);
    for(final List<dynamic> itemObject in listObject[4]) {
      listMaps.add(Maps(
          itemObject[0],
          itemObject[1],
          itemObject[2]));
    }
    final List<KillerPerk> listKillerPerk = List.empty(growable: true);
    for(final List<dynamic> itemObject in listObject[5]) {
      listKillerPerk.add(KillerPerk(
          itemObject[0],
          itemObject[1],
          itemObject[2]));
    }
    final List<SurvivorPerk> listSurvivorPerk = List.empty(growable: true);
    for(final List<dynamic> itemObject in listObject[6]) {
      listSurvivorPerk.add(SurvivorPerk(
          itemObject[0],
          itemObject[1],
          itemObject[2]));
    }
    return BalanceKiller(
        listObject[0],
        Killer(
            listObject[1],
            listObject[2],
            listObject[3]),
        ListMaps(listMaps),
        ListKillerPerk(listKillerPerk),
        ListSurvivorPerk(listSurvivorPerk),
        listObject[7],
        listObject[8]);
  }
}