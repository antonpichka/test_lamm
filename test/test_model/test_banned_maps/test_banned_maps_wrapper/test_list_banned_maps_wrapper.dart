import 'package:test/test.dart';
import 'package:test_lamm/model/banned_maps/banned_maps_wrapper/list_banned_maps_wrapper.dart';

void main() {
  test("createListModel", () {
    final listBannedMapsWrapper = ListBannedMapsWrapper([
      [
        "720c645a-cf70-11ef-9cd2-0242ac120002",
        "8c3ece2e-cf59-11ef-9cd2-0242ac120002",
        "Chapel",
        "assets/icons/dbd/maps/chapel.png",
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        "9913e426-cf6e-11ef-9cd2-0242ac120002",
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        "Discord"
      ],
      [
        "720c645a-cf70-11ef-9cd2-0242ac120002",
        "8c3ece2e-cf59-11ef-9cd2-0242ac120002",
        "Chapel",
        "assets/icons/dbd/maps/chapel.png",
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        "9913e426-cf6e-11ef-9cd2-0242ac120002",
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        "Discord"
      ]
    ]);
    final createListModel = listBannedMapsWrapper.createListModel();
    expect('ListBannedMaps(listModel: [\n'
        'BannedMaps(uniqueId: 720c645a-cf70-11ef-9cd2-0242ac120002, maps: Maps(uniqueId: 8c3ece2e-cf59-11ef-9cd2-0242ac120002, name: Chapel, imagePath: assets/icons/dbd/maps/chapel.png), creationAt: 1970-01-21 05:21:56.582, user: User(uniqueId: 9913e426-cf6e-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Discord)),\n'
        'BannedMaps(uniqueId: 720c645a-cf70-11ef-9cd2-0242ac120002, maps: Maps(uniqueId: 8c3ece2e-cf59-11ef-9cd2-0242ac120002, name: Chapel, imagePath: assets/icons/dbd/maps/chapel.png), creationAt: 1970-01-21 05:21:56.582, user: User(uniqueId: 9913e426-cf6e-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Discord)),\n'
        '])', createListModel.toString());
  });
}