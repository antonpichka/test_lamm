import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/banned_maps/banned_maps.dart';
import 'package:test_lamm/model/banned_maps/list_banned_maps.dart';
import 'package:test_lamm/model/killer/killer.dart';
import 'package:test_lamm/model/killer_perk/killer_perk.dart';
import 'package:test_lamm/model/maps/maps.dart';
import 'package:test_lamm/model/picked_killer/picked_killer.dart';
import 'package:test_lamm/model/picked_killer_perk/list_picked_killer_perk.dart';
import 'package:test_lamm/model/picked_killer_perk/picked_killer_perk.dart';
import 'package:test_lamm/model/picked_maps/picked_maps.dart';
import 'package:test_lamm/model/picked_survivor_perk/list_picked_survivor_perk.dart';
import 'package:test_lamm/model/picked_survivor_perk/picked_survivor_perk.dart';
import 'package:test_lamm/model/round/round.dart';
import 'package:test_lamm/model/survivor_perk/survivor_perk.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class RoundWrapper extends BaseModelWrapper {
  const RoundWrapper(super.listObject);

  @override
  Round createModel() {
    final List<BannedMaps> listBannedMaps = List.empty(growable: true);
    for (final List<dynamic> itemObject in listObject[14]) {
      listBannedMaps.add(BannedMaps(
          itemObject[0],
          Maps(
              itemObject[1],
              itemObject[2],
              itemObject[3]),
          itemObject[4],
          User(
              itemObject[5],
              itemObject[6],
              itemObject[7])));
    }
    final List<PickedKillerPerk> listPickedKillerPerk = List.empty(growable: true);
    for (final List<dynamic> itemObject in listObject[15]) {
      listPickedKillerPerk.add(PickedKillerPerk(
          itemObject[0],
          KillerPerk(
              itemObject[1],
              itemObject[2],
              itemObject[3]),
          User(
              itemObject[4],
              itemObject[5],
              itemObject[6])));
    }
    final List<PickedSurvivorPerk> listPickedSurvivorPerk = List.empty(growable: true);
    for (final List<dynamic> itemObject in listObject[16]) {
      listPickedSurvivorPerk.add(PickedSurvivorPerk(
          itemObject[0],
          SurvivorPerk(
              itemObject[1],
              itemObject[2],
              itemObject[3]),
          User(
              itemObject[4],
              itemObject[5],
              itemObject[6])));
    }
    return Round(
        listObject[0],
        listObject[1],
        PickedKiller(
            listObject[2],
            Killer(
                listObject[3],
                listObject[4],
                listObject[5]),
            listObject[6],
            User(
                listObject[7],
                listObject[8],
                listObject[9]),
            PickedMaps(
                listObject[10],
                Maps(
                    listObject[11],
                    listObject[12],
                    listObject[13])),
            ListBannedMaps(listBannedMaps),
            ListPickedKillerPerk(listPickedKillerPerk),
            ListPickedSurvivorPerk(listPickedSurvivorPerk)),
        listObject[17],
        listObject[18],
        listObject[19],
        listObject[20],
        listObject[21],
        listObject[22]);
  }
}