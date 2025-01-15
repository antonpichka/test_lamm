import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/game_match/game_match.dart';
import 'package:test_lamm/model/game_match_w_username/game_match_w_username.dart';
import 'package:test_lamm/model/balance/balance.dart';
import 'package:test_lamm/model/balance_killer/balance_killer.dart';
import 'package:test_lamm/model/balance_killer/list_balance_killer.dart';
import 'package:test_lamm/model/banned_killer/banned_killer.dart';
import 'package:test_lamm/model/banned_killer/list_banned_killer.dart';
import 'package:test_lamm/model/banned_maps/banned_maps.dart';
import 'package:test_lamm/model/banned_maps/list_banned_maps.dart';
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
base class GameMatchWUsernameWrapper extends BaseModelWrapper {
  const GameMatchWUsernameWrapper(super.listObject);

  @override
  GameMatchWUsername createModel() {
    final List<BalanceKiller> listBalanceKiller = List.empty(growable: true);
    for (final List<dynamic> itemObject in listObject[0][4][3]) {
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
    final List<BannedKiller> listBannedKiller = List.empty(growable: true);
    for (final List<dynamic> itemObject in listObject[0][7]) {
      listBannedKiller.add(BannedKiller(
          itemObject[0],
          Killer(
              itemObject[1][0],
              itemObject[1][1],
              itemObject[1][2]),
          itemObject[2],
          User(
              itemObject[3][0],
              itemObject[3][1],
              itemObject[3][2])));
    }
    final List<PickedKiller> listPickedKiller = List.empty(growable: true);
    for (final List<dynamic> itemObject in listObject[0][8]) {
      final List<BannedMaps> listBannedMaps = List.empty(growable: true);
      for (final List<dynamic> itemObjectFirst in itemObject[5]) {
        listBannedMaps.add(BannedMaps(
            itemObjectFirst[0],
            Maps(
                itemObjectFirst[1][0],
                itemObjectFirst[1][1],
                itemObjectFirst[1][2]),
            itemObjectFirst[2],
            User(
                itemObjectFirst[3][0],
                itemObjectFirst[3][1],
                itemObjectFirst[3][2])));
      }
      final List<PickedKillerPerk> listPickedKillerPerk = List.empty(growable: true);
      for (final List<dynamic> itemObjectFirst in itemObject[6]) {
        listPickedKillerPerk.add(PickedKillerPerk(
            itemObjectFirst[0],
            KillerPerk(
                itemObjectFirst[1][0],
                itemObjectFirst[1][1],
                itemObjectFirst[1][2]),
            User(
                itemObjectFirst[2][0],
                itemObjectFirst[2][1],
                itemObjectFirst[2][2])));
      }
      final List<PickedSurvivorPerk> listPickedSurvivorPerk = List.empty(growable: true);
      for (final List<dynamic> itemObjectFirst in itemObject[7]) {
        listPickedSurvivorPerk.add(PickedSurvivorPerk(
            itemObjectFirst[0],
            SurvivorPerk(
                itemObjectFirst[1][0],
                itemObjectFirst[1][1],
                itemObjectFirst[1][2]),
            User(
                itemObjectFirst[2][0],
                itemObjectFirst[2][1],
                itemObjectFirst[2][2])));
      }
      listPickedKiller.add(PickedKiller(
          itemObject[0],
          Killer(
              itemObject[1][0],
              itemObject[1][1],
              itemObject[1][2]),
          itemObject[2],
          User(
              itemObject[3][0],
              itemObject[3][1],
              itemObject[3][2]),
          PickedMaps(
              itemObject[4][0],
              Maps(
                  itemObject[4][1][0],
                  itemObject[4][1][1],
                  itemObject[4][1][2])),
          ListBannedMaps(listBannedMaps),
          ListPickedKillerPerk(listPickedKillerPerk),
          ListPickedSurvivorPerk(listPickedSurvivorPerk)));
    }
    final List<Round> listRound = List.empty(growable: true);
    for (final List<dynamic> itemObject in listObject[0][9]) {
      final List<BannedMaps> listBannedMaps = List.empty(growable: true);
      for (final List<dynamic> itemObjectFirst in itemObject[2][5]) {
        listBannedMaps.add(BannedMaps(
            itemObjectFirst[0],
            Maps(
                itemObjectFirst[1][0],
                itemObjectFirst[1][1],
                itemObjectFirst[1][2]),
            itemObjectFirst[2],
            User(
                itemObjectFirst[3][0],
                itemObjectFirst[3][1],
                itemObjectFirst[3][2])));
      }
      final List<PickedKillerPerk> listPickedKillerPerk = List.empty(growable: true);
      for (final List<dynamic> itemObjectFirst in itemObject[2][6]) {
        listPickedKillerPerk.add(PickedKillerPerk(
            itemObjectFirst[0],
            KillerPerk(
                itemObjectFirst[1][0],
                itemObjectFirst[1][1],
                itemObjectFirst[1][2]),
            User(
                itemObjectFirst[2][0],
                itemObjectFirst[2][1],
                itemObjectFirst[2][2])));
      }
      final List<PickedSurvivorPerk> listPickedSurvivorPerk = List.empty(growable: true);
      for (final List<dynamic> itemObjectFirst in itemObject[2][7]) {
        listPickedSurvivorPerk.add(PickedSurvivorPerk(
            itemObjectFirst[0],
            SurvivorPerk(
                itemObjectFirst[1][0],
                itemObjectFirst[1][1],
                itemObjectFirst[1][2]),
            User(
                itemObjectFirst[2][0],
                itemObjectFirst[2][1],
                itemObjectFirst[2][2])));
      }
      listRound.add(Round(
          itemObject[0],
          itemObject[1],
          PickedKiller(
              itemObject[2][0],
              Killer(
                  itemObject[2][1][0],
                  itemObject[2][1][1],
                  itemObject[2][1][2]),
              itemObject[2][2],
              User(
                  itemObject[2][3][0],
                  itemObject[2][3][1],
                  itemObject[2][3][2]),
              PickedMaps(
                  itemObject[2][4][0],
                  Maps(
                      itemObject[2][4][1][0],
                      itemObject[2][4][1][1],
                      itemObject[2][4][1][2])),
              ListBannedMaps(listBannedMaps),
              ListPickedKillerPerk(listPickedKillerPerk),
              ListPickedSurvivorPerk(listPickedSurvivorPerk)),
          itemObject[3],
          itemObject[4],
          itemObject[5],
          itemObject[6],
          itemObject[7],
          itemObject[8]));
    }
    return GameMatchWUsername(
        GameMatch(
            listObject[0][0],
            listObject[0][1],
            listObject[0][2],
            listObject[0][3],
            Balance(
                listObject[0][4][0],
                Season(
                    listObject[0][4][1][0],
                    listObject[0][4][1][1],
                    listObject[0][4][1][2],
                    listObject[0][4][1][3]),
                listObject[0][4][2],
                ListBalanceKiller(listBalanceKiller)
            ),
            User(
                listObject[0][5][0],
                listObject[0][5][1],
                listObject[0][5][2]),
            User(
                listObject[0][6][0],
                listObject[0][6][1],
                listObject[0][6][2]),
            ListBannedKiller(listBannedKiller),
            ListPickedKiller(listPickedKiller),
            ListRound(listRound),
            listObject[0][10],
            listObject[0][11],
            listObject[0][12],
            listObject[0][13]),
        listObject[1],
        listObject[2]);
  }
}