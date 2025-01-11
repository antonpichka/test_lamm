import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/game_match_w_username/game_match_w_username.dart';
import 'package:test_lamm/model/game_match_w_username/game_match_w_username_wrapper/game_match_w_username_wrapper.dart';
import 'package:test_lamm/model/game_match_w_username/list_game_match_w_username.dart';

@immutable
base class ListGameMatchWUsernameWrapper extends BaseListModelWrapper {
  const ListGameMatchWUsernameWrapper(super.listsListObject);

  @override
  ListGameMatchWUsername createListModel() {
    final List<GameMatchWUsername> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final gameMatchWrapper = GameMatchWUsernameWrapper(itemListObject);
      listModel.add(gameMatchWrapper.createModel());
    }
    return ListGameMatchWUsername(listModel);
  }
}