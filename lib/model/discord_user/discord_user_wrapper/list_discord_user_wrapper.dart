import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/discord_user/discord_user.dart';
import 'package:test_lamm/model/discord_user/discord_user_wrapper/discord_user_wrapper.dart';
import 'package:test_lamm/model/discord_user/list_discord_user.dart';

@immutable
base class ListDiscordUserWrapper extends BaseListModelWrapper {
  const ListDiscordUserWrapper(super.listObject);

  @override
  ListDiscordUser createListModel() {
    final List<DiscordUser> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final discordUserWrapper = DiscordUserWrapper(itemListObject);
      listModel.add(discordUserWrapper.createModel());
    }
    return ListDiscordUser(listModel);
  }
}