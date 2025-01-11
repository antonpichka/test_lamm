import 'package:test/test.dart';
import 'package:test_lamm/model/stats/stats_wrapper/list_stats_wrapper.dart';

void main() {
  test("createListModel", () {
    final listStatsWrapper = ListStatsWrapper([
      [
        "8fbd97a0-cfc3-11ef-9cd2-0242ac120002",
        "c92b89c8-cfca-11ef-9cd2-0242ac120002",
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        "Discord",
        "edcb25e0-cfca-11ef-9cd2-0242ac120002",
        1,
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        0,
        0,
        500
      ],
      [
        "8fbd97a0-cfc3-11ef-9cd2-0242ac120002",
        "c92b89c8-cfca-11ef-9cd2-0242ac120002",
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        "Discord",
        "edcb25e0-cfca-11ef-9cd2-0242ac120002",
        1,
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        0,
        0,
        500
      ]
    ]);
    final createListModel = listStatsWrapper.createListModel();
    expect('ListStats(listModel: [\n'
        'Stats(uniqueId: 8fbd97a0-cfc3-11ef-9cd2-0242ac120002, user: User(uniqueId: c92b89c8-cfca-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Discord), season: Season(uniqueId: edcb25e0-cfca-11ef-9cd2-0242ac120002, seasonNumber: 1, startOfSeasonTime: 1970-01-21 05:21:56.582, endOfSeasonTime: 1970-01-21 05:21:56.582), gameMatchesWon: 0, gameMatchesLost: 0, points: 500),\n'
        'Stats(uniqueId: 8fbd97a0-cfc3-11ef-9cd2-0242ac120002, user: User(uniqueId: c92b89c8-cfca-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Discord), season: Season(uniqueId: edcb25e0-cfca-11ef-9cd2-0242ac120002, seasonNumber: 1, startOfSeasonTime: 1970-01-21 05:21:56.582, endOfSeasonTime: 1970-01-21 05:21:56.582), gameMatchesWon: 0, gameMatchesLost: 0, points: 500),\n'
        '])', createListModel.toString());
  });
}