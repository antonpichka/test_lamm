import 'package:test/test.dart';
import 'package:test_lamm/model/search_game_w_username_w_stats_w_enemy/search_game_w_username_w_stats_w_enemy_wrapper/search_game_w_username_w_stats_w_enemy_wrapper.dart';

void main() {
  test("createModel", () {
    final searchGameWUsernameWStatsWEnemyWrapper = SearchGameWUsernameWStatsWEnemyWrapper([
      [
        "7a4415d8-d27b-11ef-9cd2-0242ac120002",
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        [
          "8fff3aba-d27b-11ef-9cd2-0242ac120002",
          DateTime.fromMillisecondsSinceEpoch(1736516582),
          "Discord",
        ],
        [
          "a020dc28-d27b-11ef-9cd2-0242ac120002",
          DateTime.fromMillisecondsSinceEpoch(1736516582),
          "Steam",
        ],
        false,
        false,
        false,
      ],
      "Enemy",
      [
        "45740f3a-d27f-11ef-9cd2-0242ac120002",
        [
          "a020dc28-d27b-11ef-9cd2-0242ac120002",
          DateTime.fromMillisecondsSinceEpoch(1736516582),
          "Steam",
        ],
        [
          "56a996bc-d27f-11ef-9cd2-0242ac120002",
          1,
          DateTime.fromMillisecondsSinceEpoch(1736516582),
          DateTime.fromMillisecondsSinceEpoch(1736516582),
        ],
        0,
        0,
        500
      ],
    ]);
    final createModel = searchGameWUsernameWStatsWEnemyWrapper.createModel();
    expect('SearchGameWUsernameWStatsWEnemy(uniqueId: 7a4415d8-d27b-11ef-9cd2-0242ac120002, searchGame: SearchGame(uniqueId: 7a4415d8-d27b-11ef-9cd2-0242ac120002, updatedAt: 1970-01-21 05:21:56.582, user: User(uniqueId: 8fff3aba-d27b-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Discord), userWEnemy: User(uniqueId: a020dc28-d27b-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Steam), isSearching: false, isAccepted: false, isAcceptedWEnemy: false), usernameWEnemy: Enemy, statsWEnemy: Stats(uniqueId: 45740f3a-d27f-11ef-9cd2-0242ac120002, user: User(uniqueId: a020dc28-d27b-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Steam), season: Season(uniqueId: 56a996bc-d27f-11ef-9cd2-0242ac120002, seasonNumber: 1, startOfSeasonTime: 1970-01-21 05:21:56.582, endOfSeasonTime: 1970-01-21 05:21:56.582), gameMatchesWon: 0, gameMatchesLost: 0, points: 500))', createModel.toString());
  });
}