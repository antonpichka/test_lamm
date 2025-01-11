import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/balance/balance.dart';
import 'package:test_lamm/model/balance_killer/balance_killer.dart';
import 'package:test_lamm/model/balance_killer/list_balance_killer.dart';
import 'package:test_lamm/model/banned_killer/banned_killer.dart';
import 'package:test_lamm/model/banned_killer/list_banned_killer.dart';
import 'package:test_lamm/model/banned_maps/banned_maps.dart';
import 'package:test_lamm/model/banned_maps/list_banned_maps.dart';
import 'package:test_lamm/model/game_match/game_match.dart';
import 'package:test_lamm/model/killer/killer.dart';
import 'package:test_lamm/model/killer_perk/killer_perk.dart';
import 'package:test_lamm/model/killer_perk/list_killer_perk.dart';
import 'package:test_lamm/model/maps/list_maps.dart';
import 'package:test_lamm/model/maps/maps.dart';
import 'package:test_lamm/model/picked_killer/list_picked_killer.dart';
import 'package:test_lamm/model/picked_killer/picked_killer.dart';
import 'package:test_lamm/model/picked_killer_perk/list_picked_killer_perk.dart';
import 'package:test_lamm/model/picked_killer_perk/picked_killer_perk.dart';
import 'package:test_lamm/model/picked_maps/picked_maps.dart';
import 'package:test_lamm/model/picked_survivor_perk/list_picked_survivor_perk.dart';
import 'package:test_lamm/model/picked_survivor_perk/picked_survivor_perk.dart';
import 'package:test_lamm/model/round/list_round.dart';
import 'package:test_lamm/model/round/round.dart';
import 'package:test_lamm/model/season/season.dart';
import 'package:test_lamm/model/survivor_perk/list_survivor_perk.dart';
import 'package:test_lamm/model/survivor_perk/survivor_perk.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class GameMatchWrapper extends BaseModelWrapper {
  const GameMatchWrapper(super.listObject);

  @override
  GameMatch createModel() {
    final List<BalanceKiller> listBalanceKiller = List.empty(growable: true);
    for (final List<dynamic> itemObject in listObject[10]) {
      final List<Maps> listMaps = List.empty(growable: true);
      for(final List<dynamic> itemObjectFirst in itemObject[4]) {
        listMaps.add(Maps(
            itemObjectFirst[0],
            itemObjectFirst[1],
            itemObjectFirst[2]));
      }
      final List<KillerPerk> listKillerPerk = List.empty(growable: true);
      for(final List<dynamic> itemObjectFirst in itemObject[5]) {
        listKillerPerk.add(KillerPerk(
            itemObjectFirst[0],
            itemObjectFirst[1],
            itemObjectFirst[2]));
      }
      final List<SurvivorPerk> listSurvivorPerk = List.empty(growable: true);
      for(final List<dynamic> itemObjectFirst in itemObject[6]) {
        listSurvivorPerk.add(SurvivorPerk(
            itemObjectFirst[0],
            itemObjectFirst[1],
            itemObjectFirst[2]));
      }
      listBalanceKiller.add(BalanceKiller(
          itemObject[0],
          Killer(
              itemObject[1],
              itemObject[2],
              itemObject[3]),
          ListMaps(listMaps),
          ListKillerPerk(listKillerPerk),
          ListSurvivorPerk(listSurvivorPerk),
          itemObject[7],
          itemObject[8]));
    }
    final List<BannedKiller> listBannedKiller = List.empty(growable: true);
    for (final List<dynamic> itemObject in listObject[17]) {
      listBannedKiller.add(BannedKiller(
          itemObject[0],
          Killer(
              itemObject[1],
              itemObject[2],
              itemObject[3]),
          itemObject[4],
          User(
              itemObject[5],
              itemObject[6],
              itemObject[7])));
    }
    final List<PickedKiller> listPickedKiller = List.empty(growable: true);
    for (final List<dynamic> itemObject in listObject[18]) {
      final List<BannedMaps> listBannedMaps = List.empty(growable: true);
      for (final List<dynamic> itemObjectFirst in itemObject[12]) {
        listBannedMaps.add(BannedMaps(
            itemObjectFirst[0],
            Maps(
                itemObjectFirst[1],
                itemObjectFirst[2],
                itemObjectFirst[3]),
            itemObjectFirst[4],
            User(
                itemObjectFirst[5],
                itemObjectFirst[6],
                itemObjectFirst[7])));
      }
      final List<PickedKillerPerk> listPickedKillerPerk = List.empty(growable: true);
      for (final List<dynamic> itemObjectFirst in itemObject[13]) {
        listPickedKillerPerk.add(PickedKillerPerk(
            itemObjectFirst[0],
            KillerPerk(
                itemObjectFirst[1],
                itemObjectFirst[2],
                itemObjectFirst[3]),
            User(
                itemObjectFirst[4],
                itemObjectFirst[5],
                itemObjectFirst[6])));
      }
      final List<PickedSurvivorPerk> listPickedSurvivorPerk = List.empty(growable: true);
      for (final List<dynamic> itemObjectFirst in itemObject[14]) {
        listPickedSurvivorPerk.add(PickedSurvivorPerk(
            itemObjectFirst[0],
            SurvivorPerk(
                itemObjectFirst[1],
                itemObjectFirst[2],
                itemObjectFirst[3]),
            User(
                itemObjectFirst[4],
                itemObjectFirst[5],
                itemObjectFirst[6])));
      }
      listPickedKiller.add(PickedKiller(
          itemObject[0],
          Killer(
              itemObject[1],
              itemObject[2],
              itemObject[3]),
          itemObject[4],
          User(
              itemObject[5],
              itemObject[6],
              itemObject[7]),
          PickedMaps(
              itemObject[8],
              Maps(
                  itemObject[9],
                  itemObject[10],
                  itemObject[11])),
          ListBannedMaps(listBannedMaps),
          ListPickedKillerPerk(listPickedKillerPerk),
          ListPickedSurvivorPerk(listPickedSurvivorPerk)));
    }
    final List<Round> listRound = List.empty(growable: true);
    for (final List<dynamic> itemObject in listObject[19]) {
      final List<BannedMaps> listBannedMaps = List.empty(growable: true);
      for (final List<dynamic> itemObjectFirst in itemObject[14]) {
        listBannedMaps.add(BannedMaps(
            itemObjectFirst[0],
            Maps(
                itemObjectFirst[1],
                itemObjectFirst[2],
                itemObjectFirst[3]),
            itemObjectFirst[4],
            User(
                itemObjectFirst[5],
                itemObjectFirst[6],
                itemObjectFirst[7])));
      }
      final List<PickedKillerPerk> listPickedKillerPerk = List.empty(growable: true);
      for (final List<dynamic> itemObjectFirst in itemObject[15]) {
        listPickedKillerPerk.add(PickedKillerPerk(
            itemObjectFirst[0],
            KillerPerk(
                itemObjectFirst[1],
                itemObjectFirst[2],
                itemObjectFirst[3]),
            User(
                itemObjectFirst[4],
                itemObjectFirst[5],
                itemObjectFirst[6])));
      }
      final List<PickedSurvivorPerk> listPickedSurvivorPerk = List.empty(growable: true);
      for (final List<dynamic> itemObjectFirst in itemObject[16]) {
        listPickedSurvivorPerk.add(PickedSurvivorPerk(
            itemObjectFirst[0],
            SurvivorPerk(
                itemObjectFirst[1],
                itemObjectFirst[2],
                itemObjectFirst[3]),
            User(
                itemObjectFirst[4],
                itemObjectFirst[5],
                itemObjectFirst[6])));
      }
      listRound.add(Round(
          itemObject[0],
          itemObject[1],
          PickedKiller(
              itemObject[2],
              Killer(
                  itemObject[3],
                  itemObject[4],
                  itemObject[5]),
              itemObject[6],
              User(
                  itemObject[7],
                  itemObject[8],
                  itemObject[9]),
              PickedMaps(
                  itemObject[10],
                  Maps(
                      itemObject[11],
                      itemObject[12],
                      itemObject[13])),
              ListBannedMaps(listBannedMaps),
              ListPickedKillerPerk(listPickedKillerPerk),
              ListPickedSurvivorPerk(listPickedSurvivorPerk)),
          itemObject[17],
          itemObject[18],
          itemObject[19],
          itemObject[20],
          itemObject[21],
          itemObject[22]));
    }
    return GameMatch(
        listObject[0],
        listObject[1],
        listObject[2],
        listObject[3],
        Balance(
            listObject[4],
            Season(
                listObject[5],
                listObject[6],
                listObject[7],
                listObject[8]),
            listObject[9],
            ListBalanceKiller(listBalanceKiller)
        ),
        User(
            listObject[11],
            listObject[12],
            listObject[13]),
        User(
            listObject[14],
            listObject[15],
            listObject[16]),
        ListBannedKiller(listBannedKiller),
        ListPickedKiller(listPickedKiller),
        ListRound(listRound),
        listObject[20],
        listObject[21],
        listObject[22],
        listObject[23]);
  }
}