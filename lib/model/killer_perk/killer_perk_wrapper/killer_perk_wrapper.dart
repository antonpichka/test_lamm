import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/killer_perk/killer_perk.dart';

@immutable
base class KillerPerkWrapper extends BaseModelWrapper {
  const KillerPerkWrapper(super.listsListObject);

  @override
  KillerPerk createModel() {
    return KillerPerk(
        listObject[0],
        listObject[1],
        listObject[2]);
  }
}