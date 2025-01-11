import 'package:test/test.dart';
import 'package:test_lamm/model/killer/killer_wrapper/list_killer_wrapper.dart';

void main() {
  test("createListModel", () {
    final listKillerWrapper = ListKillerWrapper([
      [
        "36b12222-cf59-11ef-9cd2-0242ac120002",
        "Trapper",
        "assets/icons/dbd/killer/trapper.png",
      ],
      [
        "36b12222-cf59-11ef-9cd2-0242ac120002",
        "Trapper",
        "assets/icons/dbd/killer/trapper.png",
      ]
    ]);
    final createListModel = listKillerWrapper.createListModel();
    expect('ListKiller(listModel: [\n'
        'Killer(uniqueId: 36b12222-cf59-11ef-9cd2-0242ac120002, name: Trapper, imagePath: assets/icons/dbd/killer/trapper.png),\n'
        'Killer(uniqueId: 36b12222-cf59-11ef-9cd2-0242ac120002, name: Trapper, imagePath: assets/icons/dbd/killer/trapper.png),\n'
        '])', createListModel.toString());
  });
}