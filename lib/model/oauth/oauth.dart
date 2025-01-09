import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class OAuth extends BaseModel {
  final User user;
  final String accessToken;
  final String tokenType;
  final DateTime expiresIn;

  const OAuth(super.uniqueId, this.user, this.accessToken, this.tokenType, this.expiresIn);

  @override
  OAuth clone() {
    return OAuth(uniqueId, user.clone(), accessToken, tokenType, expiresIn);
  }

  @override
  String toString() {
    return "OAuth(uniqueId: $uniqueId, user: $user, accessToken: $accessToken, tokenType: $tokenType, expiresIn: $expiresIn)";
  }
}