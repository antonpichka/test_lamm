import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/discord_oauth/discord_oauth.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class DiscordOAuthWrapper extends BaseModelWrapper {
  const DiscordOAuthWrapper(super.listObject);

  @override
  DiscordOAuth createModel() {
    return DiscordOAuth(
        listObject[0],
        User(
            listObject[1][0],
            listObject[1][1],
            listObject[1][2]),
        listObject[2],
        listObject[3],
        listObject[4],
        listObject[5],
        listObject[6]);
  }
}