import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/discord_user_api/discord_user_api.dart';
import 'package:test_lamm/model/discord_user_api/discord_user_api_wrapper/discord_user_api_wrapper.dart';
import 'package:test_lamm/model/discord_user_api/list_discord_user_api.dart';

@immutable
base class ListDiscordUserAPIWrapper extends BaseListModelWrapper {
  const ListDiscordUserAPIWrapper(super.listsListObject);

  @override
  ListDiscordUserAPI createListModel() {
    final List<DiscordUserAPI> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final discordUserAPIWrapper = DiscordUserAPIWrapper(itemListObject);
      listModel.add(discordUserAPIWrapper.createModel());
    }
    return ListDiscordUserAPI(listModel);
  }
}