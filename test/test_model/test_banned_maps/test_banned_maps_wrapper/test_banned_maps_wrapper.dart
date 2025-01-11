import 'package:test/test.dart';
import 'package:test_lamm/model/banned_maps/banned_maps_wrapper/banned_maps_wrapper.dart';

void main() {
  test("createModel", () {
    final bannedMapsWrapper = BannedMapsWrapper([
      "720c645a-cf70-11ef-9cd2-0242ac120002",
      "8c3ece2e-cf59-11ef-9cd2-0242ac120002",
      "Chapel",
      "assets/icons/dbd/maps/chapel.png",
      DateTime.fromMillisecondsSinceEpoch(1736516582),
      "9913e426-cf6e-11ef-9cd2-0242ac120002",
      DateTime.fromMillisecondsSinceEpoch(1736516582),
      "Discord"
    ]);
    final createModel = bannedMapsWrapper.createModel();
    expect('BannedMaps(uniqueId: 720c645a-cf70-11ef-9cd2-0242ac120002, maps: Maps(uniqueId: 8c3ece2e-cf59-11ef-9cd2-0242ac120002, name: Chapel, imagePath: assets/icons/dbd/maps/chapel.png), creationAt: 1970-01-21 05:21:56.582, user: User(uniqueId: 9913e426-cf6e-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Discord))', createModel.toString());
  });
}