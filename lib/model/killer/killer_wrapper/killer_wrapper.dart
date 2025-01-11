import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/killer/killer.dart';

@immutable
base class KillerWrapper extends BaseModelWrapper {
  const KillerWrapper(super.listsListObject);

  @override
  Killer createModel() {
    return Killer(
        listObject[0],
        listObject[1],
        listObject[2]);
  }
}