import 'package:test/test.dart';
import 'package:test_lamm/model/picked_maps/picked_maps_wrapper/list_picked_maps_wrapper.dart';

void main() {
  test("createListModel", () {
    final listPickedMapsWrapper = ListPickedMapsWrapper([
      [
        "01ce181a-cf88-11ef-9cd2-0242ac120002",
        "1f3d74fe-cf5b-11ef-9cd2-0242ac120002",
        "Gas Station",
        "assets/icons/dbd/maps/gas_station.png",
      ],
      [
        "01ce181a-cf88-11ef-9cd2-0242ac120002",
        "1f3d74fe-cf5b-11ef-9cd2-0242ac120002",
        "Gas Station",
        "assets/icons/dbd/maps/gas_station.png",
      ]
    ]);
    final createListModel = listPickedMapsWrapper.createListModel();
    expect('ListPickedMaps(listModel: [\n'
        'PickedMaps(uniqueId: 01ce181a-cf88-11ef-9cd2-0242ac120002, maps: Maps(uniqueId: 1f3d74fe-cf5b-11ef-9cd2-0242ac120002, name: Gas Station, imagePath: assets/icons/dbd/maps/gas_station.png)),\n'
        'PickedMaps(uniqueId: 01ce181a-cf88-11ef-9cd2-0242ac120002, maps: Maps(uniqueId: 1f3d74fe-cf5b-11ef-9cd2-0242ac120002, name: Gas Station, imagePath: assets/icons/dbd/maps/gas_station.png)),\n'
        '])', createListModel.toString());
  });
}