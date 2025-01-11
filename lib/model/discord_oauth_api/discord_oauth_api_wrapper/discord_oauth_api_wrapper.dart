import 'package:test_lamm/model/discord_oauth_api/discord_oauth_api.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class DiscordOAuthAPIWrapper extends BaseModelWrapper {
  const DiscordOAuthAPIWrapper(super.listObject);

  @override
  DiscordOAuthAPI createModel() {
    return DiscordOAuthAPI(
        listObject[0],
        listObject[1],
        listObject[2],
        listObject[3],
        listObject[4]);
  }
}