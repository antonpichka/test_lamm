import 'package:test_lamm/model/balance/balance.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/balance_killer/balance_killer.dart';
import 'package:test_lamm/model/balance_killer/list_balance_killer.dart';
import 'package:test_lamm/model/killer/killer.dart';
import 'package:test_lamm/model/killer_perk/killer_perk.dart';
import 'package:test_lamm/model/killer_perk/list_killer_perk.dart';
import 'package:test_lamm/model/maps/list_maps.dart';
import 'package:test_lamm/model/maps/maps.dart';
import 'package:test_lamm/model/season/season.dart';
import 'package:test_lamm/model/survivor_perk/list_survivor_perk.dart';
import 'package:test_lamm/model/survivor_perk/survivor_perk.dart';

@immutable
base class BalanceWrapper extends BaseModelWrapper {
  const BalanceWrapper(super.listObject);

  @override
  Balance createModel() {
    final List<BalanceKiller> listBalanceKiller = List.empty(growable: true);
    for(final List<dynamic> itemObject in listObject[3]) {
      final List<Maps> listMaps = List.empty(growable: true);
      for(final List<dynamic> itemObjectFirst in itemObject[2]) {
        listMaps.add(Maps(
            itemObjectFirst[0],
            itemObjectFirst[1],
            itemObjectFirst[2]));
      }
      final List<KillerPerk> listKillerPerk = List.empty(growable: true);
      for(final List<dynamic> itemObjectFirst in itemObject[3]) {
        listKillerPerk.add(KillerPerk(
            itemObjectFirst[0],
            itemObjectFirst[1],
            itemObjectFirst[2]));
      }
      final List<SurvivorPerk> listSurvivorPerk = List.empty(growable: true);
      for(final List<dynamic> itemObjectFirst in itemObject[4]) {
        listSurvivorPerk.add(SurvivorPerk(
            itemObjectFirst[0],
            itemObjectFirst[1],
            itemObjectFirst[2]));
      }
      listBalanceKiller.add(BalanceKiller(
          itemObject[0],
          Killer(
              itemObject[1][0],
              itemObject[1][1],
              itemObject[1][2]),
          ListMaps(listMaps),
          ListKillerPerk(listKillerPerk),
          ListSurvivorPerk(listSurvivorPerk),
          itemObject[5],
          itemObject[6]));
    }
    return Balance(
        listObject[0],
        Season(
            listObject[1][0],
            listObject[1][1],
            listObject[1][2],
            listObject[1][3]),
        listObject[2],
        ListBalanceKiller(listBalanceKiller));
  }
}