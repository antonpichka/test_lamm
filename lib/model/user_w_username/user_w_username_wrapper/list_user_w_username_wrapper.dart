import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/user_w_username/list_user_w_username.dart';
import 'package:test_lamm/model/user_w_username/user_w_username.dart';
import 'package:test_lamm/model/user_w_username/user_w_username_wrapper/user_w_username_wrapper.dart';

@immutable
base class ListUserWUsernameWrapper extends BaseListModelWrapper {
  const ListUserWUsernameWrapper(super.listsListObject);

  @override
  ListUserWUsername createListModel() {
    final List<UserWUsername> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final userWUsernameWrapper = UserWUsernameWrapper(itemListObject);
      listModel.add(userWUsernameWrapper.createModel());
    }
    return ListUserWUsername(listModel);
  }
}