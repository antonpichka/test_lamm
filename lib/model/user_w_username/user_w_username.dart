import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class UserWUsername extends BaseModel {
  final User user;
  final String username;

  const UserWUsername(super.uniqueId,this.user,this.username);

  @override
  UserWUsername clone() => UserWUsername(uniqueId, user.clone(), username);

  @override
  String toString() {
    return "UserWUsername(uniqueId: $uniqueId, user: $user, username: $username)";
  }
}