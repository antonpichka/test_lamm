import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/picked_survivor_perk/picked_survivor_perk.dart';
import 'package:test_lamm/model/survivor_perk/survivor_perk.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class PickedSurvivorPerkWrapper extends BaseModelWrapper {
  const PickedSurvivorPerkWrapper(super.listObject);

  @override
  PickedSurvivorPerk createModel() {
    return PickedSurvivorPerk(
        listObject[0],
        SurvivorPerk(
            listObject[1],
            listObject[2],
            listObject[3]),
        User(
            listObject[4],
            listObject[5],
            listObject[6]));
  }
}