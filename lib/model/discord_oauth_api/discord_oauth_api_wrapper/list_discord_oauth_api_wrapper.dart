import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/discord_oauth_api/discord_oauth_api.dart';
import 'package:test_lamm/model/discord_oauth_api/discord_oauth_api_wrapper/discord_oauth_api_wrapper.dart';
import 'package:test_lamm/model/discord_oauth_api/list_discord_oauth_api.dart';

@immutable
base class ListDiscordOAuthAPIWrapper extends BaseListModelWrapper {
  const ListDiscordOAuthAPIWrapper(super.listsListObject);

  @override
  ListDiscordOAuthAPI createListModel() {
    final List<DiscordOAuthAPI> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final discordOAuthAPIWrapper = DiscordOAuthAPIWrapper(itemListObject);
      listModel.add(discordOAuthAPIWrapper.createModel());
    }
    return ListDiscordOAuthAPI(listModel);
  }
}