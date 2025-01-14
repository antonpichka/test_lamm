import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/search_game/search_game_wrapper/search_game_wrapper.dart';
import 'package:test_lamm/model/search_game/list_search_game.dart';
import 'package:test_lamm/model/search_game/search_game.dart';

@immutable
base class ListSearchGameWrapper extends BaseListModelWrapper {
  const ListSearchGameWrapper(super.listsListObject);

  @override
  ListSearchGame createListModel() {
    final List<SearchGame> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final searchGameWrapper = SearchGameWrapper(itemListObject);
      listModel.add(searchGameWrapper.createModel());
    }
    return ListSearchGame(listModel);
  }
}