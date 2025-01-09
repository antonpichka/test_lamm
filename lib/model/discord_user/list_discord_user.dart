import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/discord_user/discord_user.dart';

@immutable
base class ListDiscordUser<T extends DiscordUser> extends BaseListModel<T> {
  const ListDiscordUser(super.listModel);

  @override
  ListDiscordUser<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T itemModel in listModel) {
      newListModel.add(itemModel.clone() as T);
    }
    return ListDiscordUser<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListDiscordUser(listModel: [$strListModel])";
  }
}