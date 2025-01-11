import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/season/season.dart';

@immutable
base class SeasonWrapper extends BaseModelWrapper {
  const SeasonWrapper(super.listObject);

  @override
  Season createModel() {
    return Season(
        listObject[0],
        listObject[1],
        listObject[2],
        listObject[3]);
  }
}