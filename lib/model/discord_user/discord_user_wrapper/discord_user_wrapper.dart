import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/discord_user/discord_user.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class DiscordUserWrapper extends BaseModelWrapper {
  const DiscordUserWrapper(super.listObject);

  @override
  DiscordUser createModel() {
    return DiscordUser(
        listObject[0],
        User(
            listObject[1],
            listObject[2],
            listObject[3]),
        listObject[4],
        listObject[5],
        listObject[6]);
  }
}