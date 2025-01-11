import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/oauth/list_oauth.dart';
import 'package:test_lamm/model/oauth/oauth.dart';
import 'package:test_lamm/model/oauth/oauth_wrapper/oauth_wrapper.dart';

@immutable
base class ListOAuthWrapper extends BaseListModelWrapper {
  const ListOAuthWrapper(super.listsListObject);

  @override
  ListOAuth createListModel() {
    final List<OAuth> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final oAuthWrapper = OAuthWrapper(itemListObject);
      listModel.add(oAuthWrapper.createModel());
    }
    return ListOAuth(listModel);
  }
}