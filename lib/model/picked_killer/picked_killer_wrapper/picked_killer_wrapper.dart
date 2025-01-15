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
import 'package:test_lamm/model/survivor_perk/survivor_perk.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class PickedKillerWrapper extends BaseModelWrapper {
  const PickedKillerWrapper(super.listObject);

  @override
  PickedKiller createModel() {
    final List<BannedMaps> listBannedMaps = List.empty(growable: true);
    for (final List<dynamic> itemObject in listObject[5]) {
      listBannedMaps.add(BannedMaps(
          itemObject[0],
          Maps(
              itemObject[1][0],
              itemObject[1][1],
              itemObject[1][2]),
          itemObject[2],
          User(
              itemObject[3][0],
              itemObject[3][1],
              itemObject[3][2])));
    }
    final List<PickedKillerPerk> listPickedKillerPerk = List.empty(growable: true);
    for (final List<dynamic> itemObject in listObject[6]) {
      listPickedKillerPerk.add(PickedKillerPerk(
          itemObject[0],
          KillerPerk(
              itemObject[1][0],
              itemObject[1][1],
              itemObject[1][2]),
          User(
              itemObject[2][0],
              itemObject[2][1],
              itemObject[2][2])));
    }
    final List<PickedSurvivorPerk> listPickedSurvivorPerk = List.empty(growable: true);
    for (final List<dynamic> itemObject in listObject[7]) {
      listPickedSurvivorPerk.add(PickedSurvivorPerk(
          itemObject[0],
          SurvivorPerk(
              itemObject[1][0],
              itemObject[1][1],
              itemObject[1][2]),
          User(
              itemObject[2][0],
              itemObject[2][1],
              itemObject[2][2])));
    }
    return PickedKiller(
        listObject[0],
        Killer(
            listObject[1][0],
            listObject[1][1],
            listObject[1][2]),
        listObject[2],
        User(
            listObject[3][0],
            listObject[3][1],
            listObject[3][2]),
        PickedMaps(
            listObject[4][0],
            Maps(
                listObject[4][1][0],
                listObject[4][1][1],
                listObject[4][1][2])),
        ListBannedMaps(listBannedMaps),
        ListPickedKillerPerk(listPickedKillerPerk),
        ListPickedSurvivorPerk(listPickedSurvivorPerk));
  }
}