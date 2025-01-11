import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/discord_oauth/discord_oauth.dart';

@immutable
base class ListDiscordOAuth<T extends DiscordOAuth> extends BaseListModel<T> {
  const ListDiscordOAuth(super.listModel);

  @override
  ListDiscordOAuth<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T itemModel in listModel) {
      newListModel.add(itemModel.clone() as T);
    }
    return ListDiscordOAuth<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListDiscordOAuth(listModel: [$strListModel])";
  }
}