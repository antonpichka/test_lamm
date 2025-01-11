import 'package:test/test.dart';
import 'package:test_lamm/model/maps/maps_wrapper/list_maps_wrapper.dart';

void main() {
  test("createListModel", () {
    final listMapsWrapper = ListMapsWrapper([
      [
        "1f3d74fe-cf5b-11ef-9cd2-0242ac120002",
        "Gas Station",
        "assets/icons/dbd/maps/gas_station.png"
      ],
      [
        "1f3d74fe-cf5b-11ef-9cd2-0242ac120002",
        "Gas Station",
        "assets/icons/dbd/maps/gas_station.png"
      ]
    ]);
    final createListModel = listMapsWrapper.createListModel();
    expect('ListMaps(listModel: [\n'
        'Maps(uniqueId: 1f3d74fe-cf5b-11ef-9cd2-0242ac120002, name: Gas Station, imagePath: assets/icons/dbd/maps/gas_station.png),\n'
        'Maps(uniqueId: 1f3d74fe-cf5b-11ef-9cd2-0242ac120002, name: Gas Station, imagePath: assets/icons/dbd/maps/gas_station.png),\n'
        '])', createListModel.toString());
  });
}