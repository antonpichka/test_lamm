import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class DiscordOAuth extends BaseModel {
  final User user;
  final String accessToken;
  final String tokenType;
  final int expiresIn;
  final String refreshToken;
  final String scope;

  const DiscordOAuth(super.uniqueId, this.user, this.accessToken, this.tokenType, this.expiresIn, this.refreshToken, this.scope);

  @override
  DiscordOAuth clone() => DiscordOAuth(uniqueId, user.clone(), accessToken, tokenType, expiresIn, refreshToken, scope);

  @override
  String toString() {
    return "DiscordOAuth(uniqueId: $uniqueId, user: $user, accessToken: $accessToken, tokenType: $tokenType, expiresIn: $expiresIn, refreshToken: $refreshToken, scope: $scope)";
  }
}