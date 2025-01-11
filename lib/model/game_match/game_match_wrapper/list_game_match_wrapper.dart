import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/game_match/game_match.dart';
import 'package:test_lamm/model/game_match/game_match_wrapper/game_match_wrapper.dart';
import 'package:test_lamm/model/game_match/list_game_match.dart';

@immutable
base class ListGameMatchWrapper extends BaseListModelWrapper {
  const ListGameMatchWrapper(super.listsListObject);

  @override
  ListGameMatch createListModel() {
    final List<GameMatch> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final gameMatchWrapper = GameMatchWrapper(itemListObject);
      listModel.add(gameMatchWrapper.createModel());
    }
    return ListGameMatch(listModel);
  }
}