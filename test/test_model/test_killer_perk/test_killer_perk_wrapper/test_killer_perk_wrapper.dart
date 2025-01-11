import 'package:test/test.dart';
import 'package:test_lamm/model/killer_perk/killer_perk_wrapper/killer_perk_wrapper.dart';

void main() {
  test("createModel", () {
    final killerPerkWrapper = KillerPerkWrapper([
      "c9351138-cf97-11ef-9cd2-0242ac120002",
      "Bamboozle",
      "assets/icons/dbd/killer_perk/bamboozle.png"
    ]);
    final createModel = killerPerkWrapper.createModel();
    expect('KillerPerk(uniqueId: c9351138-cf97-11ef-9cd2-0242ac120002, name: Bamboozle, imagePath: assets/icons/dbd/killer_perk/bamboozle.png)', createModel.toString());
  });
}