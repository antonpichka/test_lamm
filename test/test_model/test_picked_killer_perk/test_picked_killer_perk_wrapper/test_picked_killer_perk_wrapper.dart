import 'package:test/test.dart';
import 'package:test_lamm/model/picked_killer_perk/picked_killer_perk_wrapper/picked_killer_perk_wrapper.dart';

void main() {
  test("createModel", () {
    final pickedKillerPerkWrapper = PickedKillerPerkWrapper([
      "8937fc8e-cf89-11ef-9cd2-0242ac120002",
      [
        "dd649f90-cf59-11ef-9cd2-0242ac120002",
        "Bamboozle",
        "assets/icons/dbd/killer_perk/bamboozle.png",
      ],
      [
        "00117a4c-cf85-11ef-9cd2-0242ac120002",
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        "Discord",
      ],
    ]);
    final createModel = pickedKillerPerkWrapper.createModel();
    expect('PickedKillerPerk(uniqueId: 8937fc8e-cf89-11ef-9cd2-0242ac120002, killerPerk: KillerPerk(uniqueId: dd649f90-cf59-11ef-9cd2-0242ac120002, name: Bamboozle, imagePath: assets/icons/dbd/killer_perk/bamboozle.png), user: User(uniqueId: 00117a4c-cf85-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Discord))', createModel.toString());
  });
}