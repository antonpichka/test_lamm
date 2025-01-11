import 'package:test/test.dart';
import 'package:test_lamm/model/killer_perk/killer_perk_wrapper/list_killer_perk_wrapper.dart';

void main() {
  test("createListModel", () {
    final listKillerPerkWrapper = ListKillerPerkWrapper([
      [
        "c9351138-cf97-11ef-9cd2-0242ac120002",
        "Bamboozle",
        "assets/icons/dbd/killer_perk/bamboozle.png"
      ],
      [
        "c9351138-cf97-11ef-9cd2-0242ac120002",
        "Bamboozle",
        "assets/icons/dbd/killer_perk/bamboozle.png"
      ]
    ]);
    final createListModel = listKillerPerkWrapper.createListModel();
    expect('ListKillerPerk(listModel: [\n'
        'KillerPerk(uniqueId: c9351138-cf97-11ef-9cd2-0242ac120002, name: Bamboozle, imagePath: assets/icons/dbd/killer_perk/bamboozle.png),\n'
        'KillerPerk(uniqueId: c9351138-cf97-11ef-9cd2-0242ac120002, name: Bamboozle, imagePath: assets/icons/dbd/killer_perk/bamboozle.png),\n'
        '])', createListModel.toString());
  });
}