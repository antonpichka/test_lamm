import 'package:test/test.dart';
import 'package:test_lamm/model/season/season_wrapper/list_season_wrapper.dart';

void main() {
  test("createListModel", () {
    final listSeasonWrapper = ListSeasonWrapper([
      [
        "8fbd97a0-cfc3-11ef-9cd2-0242ac120002",
        1,
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        DateTime.fromMillisecondsSinceEpoch(1736516582),
      ],
      [
        "8fbd97a0-cfc3-11ef-9cd2-0242ac120002",
        1,
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        DateTime.fromMillisecondsSinceEpoch(1736516582),
      ]
    ]);
    final createListModel = listSeasonWrapper.createListModel();
    expect('ListSeason(listModel: [\n'
        'Season(uniqueId: 8fbd97a0-cfc3-11ef-9cd2-0242ac120002, seasonNumber: 1, startOfSeasonTime: 1970-01-21 05:21:56.582, endOfSeasonTime: 1970-01-21 05:21:56.582),\n'
        'Season(uniqueId: 8fbd97a0-cfc3-11ef-9cd2-0242ac120002, seasonNumber: 1, startOfSeasonTime: 1970-01-21 05:21:56.582, endOfSeasonTime: 1970-01-21 05:21:56.582),\n'
        '])', createListModel.toString());
  });
}