import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Token extends BaseModel {
  final String accessTokenByOAuth;

  const Token(super.uniqueId, this.accessTokenByOAuth);

  @override
  Token clone() => Token(uniqueId, accessTokenByOAuth);

  @override
  String toString() {
    return "Token(uniqueId: $uniqueId, accessTokenByOAuth: $accessTokenByOAuth)";
  }
}