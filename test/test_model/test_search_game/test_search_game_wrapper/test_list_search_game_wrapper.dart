import 'package:test/test.dart';
import 'package:test_lamm/model/search_game/search_game_wrapper/list_search_game_wrapper.dart';

void main() {
  test("createListModel", () {
    final listSearchGameWrapper = ListSearchGameWrapper([
      [
        "7a4415d8-d27b-11ef-9cd2-0242ac120002",
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        "8fff3aba-d27b-11ef-9cd2-0242ac120002",
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        "Discord",
        "a020dc28-d27b-11ef-9cd2-0242ac120002",
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        "Steam",
        false,
        false,
        false
      ],
      [
        "7a4415d8-d27b-11ef-9cd2-0242ac120002",
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        "8fff3aba-d27b-11ef-9cd2-0242ac120002",
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        "Discord",
        "a020dc28-d27b-11ef-9cd2-0242ac120002",
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        "Steam",
        false,
        false,
        false
      ]
    ]);
    final createListModel = listSearchGameWrapper.createListModel();
    expect('ListSearchGame(listModel: [\n'
        'SearchGame(uniqueId: 7a4415d8-d27b-11ef-9cd2-0242ac120002, updatedAt: 1970-01-21 05:21:56.582, user: User(uniqueId: 8fff3aba-d27b-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Discord), userWEnemy: User(uniqueId: a020dc28-d27b-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Steam), isSearching: false, isAccepted: false, isAcceptedWEnemy: false),\n'
        'SearchGame(uniqueId: 7a4415d8-d27b-11ef-9cd2-0242ac120002, updatedAt: 1970-01-21 05:21:56.582, user: User(uniqueId: 8fff3aba-d27b-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Discord), userWEnemy: User(uniqueId: a020dc28-d27b-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Steam), isSearching: false, isAccepted: false, isAcceptedWEnemy: false),\n'
        '])', createListModel.toString());
  });
}