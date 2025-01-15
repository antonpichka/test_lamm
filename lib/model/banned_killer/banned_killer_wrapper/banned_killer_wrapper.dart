import 'package:test_lamm/model/banned_killer/banned_killer.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/killer/killer.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class BannedKillerWrapper extends BaseModelWrapper {
  const BannedKillerWrapper(super.listObject);

  @override
  BannedKiller createModel() {
    return BannedKiller(
        listObject[0],
        Killer(
            listObject[1][0],
            listObject[1][1],
            listObject[1][2]),
        listObject[2],
        User(
            listObject[3][0],
            listObject[3][1],
            listObject[3][2]));
  }
}