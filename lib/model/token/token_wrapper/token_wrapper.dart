import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/token/token.dart';

@immutable
base class TokenWrapper extends BaseModelWrapper {
  const TokenWrapper(super.listObject);

  @override
  Token createModel() {
    return Token(
        listObject[0],
        listObject[1]);
  }
}