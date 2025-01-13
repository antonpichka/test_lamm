import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/user/user.dart';
import 'package:test_lamm/model/user_w_username/user_w_username.dart';

@immutable
base class UserWUsernameWrapper extends BaseModelWrapper {
  const UserWUsernameWrapper(super.listObject);

  @override
  UserWUsername createModel() {
    return UserWUsername(
        listObject[0],
        User(
            listObject[1],
            listObject[2],
            listObject[3]),
        listObject[4]);
  }
}