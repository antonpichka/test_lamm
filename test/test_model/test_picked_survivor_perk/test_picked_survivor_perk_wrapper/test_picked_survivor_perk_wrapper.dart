import 'package:test/test.dart';
import 'package:test_lamm/model/picked_survivor_perk/picked_survivor_perk_wrapper/picked_survivor_perk_wrapper.dart';

void main() {
  test("createModel", () {
    final pickedSurvivorPerkWrapper = PickedSurvivorPerkWrapper([
      "1ac10f9c-cf8a-11ef-9cd2-0242ac120002",
      "a666fe00-cf5b-11ef-9cd2-0242ac120002",
      "Lithe",
      "assets/icons/dbd/survivor_perk/lithe.png",
      "00117a4c-cf85-11ef-9cd2-0242ac120002",
      DateTime.fromMillisecondsSinceEpoch(1736516582),
      "Discord",
    ]);
    final createModel = pickedSurvivorPerkWrapper.createModel();
    expect('PickedSurvivorPerk(uniqueId: 1ac10f9c-cf8a-11ef-9cd2-0242ac120002, survivorPerk: SurvivorPerk(uniqueId: a666fe00-cf5b-11ef-9cd2-0242ac120002, name: Lithe, imagePath: assets/icons/dbd/survivor_perk/lithe.png), user: User(uniqueId: 00117a4c-cf85-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Discord))', createModel.toString());
  });
}