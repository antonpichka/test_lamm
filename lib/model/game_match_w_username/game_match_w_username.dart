import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/game_match/game_match.dart';

@immutable
base class GameMatchWUsername extends BaseModel {
  final GameMatch gameMatch;
  final String usernameWFirstUser;
  final String usernameWSecondUser;

  GameMatchWUsername(this.gameMatch, this.usernameWFirstUser, this.usernameWSecondUser) : super(gameMatch.uniqueId);

  @override
  GameMatchWUsername clone() => GameMatchWUsername(gameMatch.clone(), usernameWFirstUser, usernameWSecondUser);

  @override
  String toString() {
    return "GameMatchWUsername(uniqueId: $uniqueId, gameMatch: $gameMatch, usernameWFirstUser: $usernameWFirstUser, usernameWSecondUser: $usernameWSecondUser)";
  }
}