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
            listObject[2],
            listObject[3],
            listObject[4]),
        User(
            listObject[5],
            listObject[6],
            listObject[7]),
        listObject[8],
        listObject[9],
        listObject[10]);
  }
}