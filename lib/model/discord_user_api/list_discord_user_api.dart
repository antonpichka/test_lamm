import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/discord_user_api/discord_user_api.dart';

@immutable
base class ListDiscordUserAPI<T extends DiscordUserAPI> extends BaseListModel<T> {
  const ListDiscordUserAPI(super.listModel);

  @override
  ListDiscordUserAPI<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T itemModel in listModel) {
      newListModel.add(itemModel.clone() as T);
    }
    return ListDiscordUserAPI<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListDiscordUserAPI(listModel: [$strListModel])";
  }
}