import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/oauth/oauth.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class OAuthWrapper extends BaseModelWrapper {
  const OAuthWrapper(super.listObject);

  @override
  OAuth createModel() {
    return OAuth(
        listObject[0],
        User(
            listObject[1][0],
            listObject[1][1],
            listObject[1][2]),
        listObject[2],
        listObject[3],
        listObject[4]);
  }
}