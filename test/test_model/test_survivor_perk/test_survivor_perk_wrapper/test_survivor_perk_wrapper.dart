import 'package:test/test.dart';
import 'package:test_lamm/model/survivor_perk/survivor_perk_wrapper/survivor_perk_wrapper.dart';

void main() {
  test("createModel", () {
    final survivorPerkWrapper = SurvivorPerkWrapper([
      "8fbd97a0-cfc3-11ef-9cd2-0242ac120002",
      "Lithe",
      "assets/icons/dbd/survivor_perk/lithe.png",
    ]);
    final createModel = survivorPerkWrapper.createModel();
    expect('SurvivorPerk(uniqueId: 8fbd97a0-cfc3-11ef-9cd2-0242ac120002, name: Lithe, imagePath: assets/icons/dbd/survivor_perk/lithe.png)', createModel.toString());
  });
}