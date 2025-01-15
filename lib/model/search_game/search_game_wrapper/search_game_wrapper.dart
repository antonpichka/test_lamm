import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/search_game/search_game.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class SearchGameWrapper extends BaseModelWrapper {
  const SearchGameWrapper(super.listObject);

  @override
  SearchGame createModel() {
    return SearchGame(
        listObject[0],
        listObject[1],
        User(
            listObject[2][0],
            listObject[2][1],
            listObject[2][2]),
        User(
            listObject[3][0],
            listObject[3][1],
            listObject[3][2]),
        listObject[4],
        listObject[5],
        listObject[6]);
  }
}