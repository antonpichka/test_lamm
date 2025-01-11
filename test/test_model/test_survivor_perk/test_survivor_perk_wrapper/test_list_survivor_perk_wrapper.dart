import 'package:test/test.dart';
import 'package:test_lamm/model/survivor_perk/survivor_perk_wrapper/list_survivor_perk_wrapper.dart';

void main() {
  test("createListModel", () {
    final listSurvivorPerkWrapper = ListSurvivorPerkWrapper([
      [
        "8fbd97a0-cfc3-11ef-9cd2-0242ac120002",
        "Lithe",
        "assets/icons/dbd/survivor_perk/lithe.png",
      ],
      [
        "8fbd97a0-cfc3-11ef-9cd2-0242ac120002",
        "Lithe",
        "assets/icons/dbd/survivor_perk/lithe.png",
      ]
    ]);
    final createListModel = listSurvivorPerkWrapper.createListModel();
    expect('ListSurvivorPerk(listModel: [\n'
        'SurvivorPerk(uniqueId: 8fbd97a0-cfc3-11ef-9cd2-0242ac120002, name: Lithe, imagePath: assets/icons/dbd/survivor_perk/lithe.png),\n'
        'SurvivorPerk(uniqueId: 8fbd97a0-cfc3-11ef-9cd2-0242ac120002, name: Lithe, imagePath: assets/icons/dbd/survivor_perk/lithe.png),\n'
        '])', createListModel.toString());
  });
}