import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/token/token_wrapper/token_wrapper.dart';
import 'package:test_lamm/model/token/list_token.dart';
import 'package:test_lamm/model/token/token.dart';

@immutable
base class ListTokenWrapper extends BaseListModelWrapper {
  const ListTokenWrapper(super.listsListObject);

  @override
  ListToken createListModel() {
    final List<Token> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final tokenWrapper = TokenWrapper(itemListObject);
      listModel.add(tokenWrapper.createModel());
    }
    return ListToken(listModel);
  }
}