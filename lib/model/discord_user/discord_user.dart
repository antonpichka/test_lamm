import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class DiscordUser extends BaseModel {
  final User user;
  final String id;
  final String username;
  final String globalName;

  const DiscordUser(super.uniqueId, this.user, this.id, this.username, this.globalName);

  @override
  DiscordUser clone() {
    return DiscordUser(uniqueId, user.clone(), id, username, globalName);
  }

  @override
  String toString() {
    return "DiscordUser(uniqueId: $uniqueId, user: $user, id: $id, username: $username, globalName: $globalName)";
  }
}