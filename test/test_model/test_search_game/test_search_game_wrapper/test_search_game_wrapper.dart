import 'package:test/test.dart';
import 'package:test_lamm/model/search_game/search_game_wrapper/search_game_wrapper.dart';

void main() {
  test("createModel", () {
    final searchGameWrapper = SearchGameWrapper([
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
      false
    ]);
    final createModel = searchGameWrapper.createModel();
    expect('SearchGame(uniqueId: 7a4415d8-d27b-11ef-9cd2-0242ac120002, updatedAt: 1970-01-21 05:21:56.582, user: User(uniqueId: 8fff3aba-d27b-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Discord), userWEnemy: User(uniqueId: a020dc28-d27b-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Steam), isSearching: false, isAccepted: false, isAcceptedWEnemy: false)', createModel.toString());
  });
}