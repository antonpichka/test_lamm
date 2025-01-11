import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class DiscordOAuthAPI extends BaseModel {
  final String accessToken;
  final String tokenType;
  final int expiresIn;
  final String refreshToken;
  final String scope;

  const DiscordOAuthAPI(this.accessToken, this.tokenType, this.expiresIn, this.refreshToken, this.scope) : super(accessToken);

  @override
  DiscordOAuthAPI clone() => DiscordOAuthAPI(accessToken, tokenType, expiresIn, refreshToken, scope);

  @override
  String toString() {
    return "DiscordOAuthAPI(accessToken: $accessToken, tokenType: $tokenType, expiresIn: $expiresIn, refreshToken: $refreshToken, scope: $scope)";
  }
}