import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/user/user_wrapper/user_wrapper.dart';
import 'package:test_lamm/model/user/list_user.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class ListUserWrapper extends BaseListModelWrapper {
  const ListUserWrapper(super.listsListObject);

  @override
  ListUser createListModel() {
    final List<User> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final userWrapper = UserWrapper(itemListObject);
      listModel.add(userWrapper.createModel());
    }
    return ListUser(listModel);
  }
}