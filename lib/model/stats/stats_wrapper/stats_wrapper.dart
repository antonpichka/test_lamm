import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/season/season.dart';
import 'package:test_lamm/model/stats/stats.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class StatsWrapper extends BaseModelWrapper {
  const StatsWrapper(super.listObject);

  @override
  Stats createModel() {
    return Stats(
        listObject[0],
        User(
            listObject[1],
            listObject[2],
            listObject[3]),
        Season(
            listObject[4],
            listObject[5],
            listObject[6],
            listObject[7]),
        listObject[8],
        listObject[9],
        listObject[10]);
  }
}