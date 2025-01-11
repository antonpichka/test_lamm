import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/discord_oauth_api/discord_oauth_api.dart';

@immutable
base class ListDiscordOAuthAPI<T extends DiscordOAuthAPI> extends BaseListModel<T> {
  const ListDiscordOAuthAPI(super.listModel);

  @override
  ListDiscordOAuthAPI<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T itemModel in listModel) {
      newListModel.add(itemModel.clone() as T);
    }
    return ListDiscordOAuthAPI<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListDiscordOAuthAPI(listModel: [$strListModel])";
  }
}