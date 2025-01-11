import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/killer_perk/killer_perk.dart';
import 'package:test_lamm/model/picked_killer_perk/picked_killer_perk.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class PickedKillerPerkWrapper extends BaseModelWrapper {
  const PickedKillerPerkWrapper(super.listObject);

  @override
  PickedKillerPerk createModel() {
    return PickedKillerPerk(
        listObject[0],
        KillerPerk(
            listObject[1],
            listObject[2],
            listObject[3]),
        User(
            listObject[4],
            listObject[5],
            listObject[6]));
  }
}