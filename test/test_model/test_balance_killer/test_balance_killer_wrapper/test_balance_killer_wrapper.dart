import 'package:test/test.dart';
import 'package:test_lamm/model/balance_killer/balance_killer_wrapper/balance_killer_wrapper.dart';

void main() {
  test("createModel", () {
    final balanceKillerWrapper = BalanceKillerWrapper([
      "2aecb1c2-cf59-11ef-9cd2-0242ac120002",
      "36b12222-cf59-11ef-9cd2-0242ac120002",
      "Trapper",
      "assets/icons/dbd/killer/trapper.png",
      [
        [
          "8c3ece2e-cf59-11ef-9cd2-0242ac120002",
          "Chapel",
          "assets/icons/dbd/maps/chapel.png"
        ],
        [
          "15fcf928-cf5b-11ef-9cd2-0242ac120002",
          "Coal Tower",
          "assets/icons/dbd/maps/coal_tower.png"
        ],
        [
          "1f3d74fe-cf5b-11ef-9cd2-0242ac120002",
          "Gas Station",
          "assets/icons/dbd/maps/gas_station.png"
        ],
      ],
      [
        [
          "dd649f90-cf59-11ef-9cd2-0242ac120002",
          "Bamboozle",
          "assets/icons/dbd/killer_perk/bamboozle.png"
        ],
        [
          "61e1303e-cf5b-11ef-9cd2-0242ac120002",
          "Brutal Strength",
          "assets/icons/dbd/killer_perk/brutal_strength.png"
        ],
      ],
      [
        [
          "a1da1d2c-cf5b-11ef-9cd2-0242ac120002",
          "Balanced Landing",
          "assets/icons/dbd/survivor_perk/balanced_landing.png"
        ],
        [
          "a666fe00-cf5b-11ef-9cd2-0242ac120002",
          "Lithe",
          "assets/icons/dbd/survivor_perk/lithe.png"
        ],
        [
          "ab877540-cf5b-11ef-9cd2-0242ac120002",
          "Sprint Burst",
          "assets/icons/dbd/survivor_perk/sprint_burst.png"
        ],
      ],
      1,
      2
    ]);
    final createModel = balanceKillerWrapper.createModel();
    expect('BalanceKiller(uniqueId: 2aecb1c2-cf59-11ef-9cd2-0242ac120002, killer: Killer(uniqueId: 36b12222-cf59-11ef-9cd2-0242ac120002, name: Trapper, imagePath: assets/icons/dbd/killer/trapper.png), listMaps: ListMaps(listModel: [\n'
        'Maps(uniqueId: 8c3ece2e-cf59-11ef-9cd2-0242ac120002, name: Chapel, imagePath: assets/icons/dbd/maps/chapel.png),\n'
        'Maps(uniqueId: 15fcf928-cf5b-11ef-9cd2-0242ac120002, name: Coal Tower, imagePath: assets/icons/dbd/maps/coal_tower.png),\n'
        'Maps(uniqueId: 1f3d74fe-cf5b-11ef-9cd2-0242ac120002, name: Gas Station, imagePath: assets/icons/dbd/maps/gas_station.png),\n'
        ']), listKillerPerk: ListKillerPerk(listModel: [\n'
        'KillerPerk(uniqueId: dd649f90-cf59-11ef-9cd2-0242ac120002, name: Bamboozle, imagePath: assets/icons/dbd/killer_perk/bamboozle.png),\n'
        'KillerPerk(uniqueId: 61e1303e-cf5b-11ef-9cd2-0242ac120002, name: Brutal Strength, imagePath: assets/icons/dbd/killer_perk/brutal_strength.png),\n'
        ']), listSurvivorPerk: ListSurvivorPerk(listModel: [\n'
        'SurvivorPerk(uniqueId: a1da1d2c-cf5b-11ef-9cd2-0242ac120002, name: Balanced Landing, imagePath: assets/icons/dbd/survivor_perk/balanced_landing.png),\n'
        'SurvivorPerk(uniqueId: a666fe00-cf5b-11ef-9cd2-0242ac120002, name: Lithe, imagePath: assets/icons/dbd/survivor_perk/lithe.png),\n'
        'SurvivorPerk(uniqueId: ab877540-cf5b-11ef-9cd2-0242ac120002, name: Sprint Burst, imagePath: assets/icons/dbd/survivor_perk/sprint_burst.png),\n'
        ']), requiredNumberOfSelectedKillerPerk: 1, requiredNumberOfSelectedSurvivorPerk: 2)', createModel.toString());
  });
}