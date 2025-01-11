import 'package:test/test.dart';
import 'package:test_lamm/model/maps/maps_wrapper/maps_wrapper.dart';

void main() {
  test("createModel", () {
    final mapsWrapper = MapsWrapper([
      "1f3d74fe-cf5b-11ef-9cd2-0242ac120002",
      "Gas Station",
      "assets/icons/dbd/maps/gas_station.png"
    ]);
    final createModel = mapsWrapper.createModel();
    expect('Maps(uniqueId: 1f3d74fe-cf5b-11ef-9cd2-0242ac120002, name: Gas Station, imagePath: assets/icons/dbd/maps/gas_station.png)', createModel.toString());
  });
}