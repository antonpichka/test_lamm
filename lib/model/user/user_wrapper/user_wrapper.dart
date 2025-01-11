import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class UserWrapper extends BaseModelWrapper {
  const UserWrapper(super.listObject);

  @override
  User createModel() {
    return User(
        listObject[0],
        listObject[1],
        listObject[2]);
  }
}