import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/survivor_perk/survivor_perk.dart';

@immutable
base class SurvivorPerkWrapper extends BaseModelWrapper {
  const SurvivorPerkWrapper(super.listObject);

  @override
  SurvivorPerk createModel() {
    return SurvivorPerk(
        listObject[0],
        listObject[1],
        listObject[2]);
  }
}