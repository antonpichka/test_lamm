import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/discord_oauth/discord_oauth.dart';
import 'package:test_lamm/model/discord_oauth/discord_oauth_wrapper/discord_oauth_wrapper.dart';
import 'package:test_lamm/model/discord_oauth/list_discord_oauth.dart';

@immutable
base class ListDiscordOAuthWrapper extends BaseListModelWrapper {
  const ListDiscordOAuthWrapper(super.listsListObject);

  @override
  ListDiscordOAuth createListModel() {
    final List<DiscordOAuth> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final discordOAuthWrapper = DiscordOAuthWrapper(itemListObject);
      listModel.add(discordOAuthWrapper.createModel());
    }
    return ListDiscordOAuth(listModel);
  }
}