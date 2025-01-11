import 'package:test/test.dart';
import 'package:test_lamm/model/killer/killer_wrapper/killer_wrapper.dart';

void main() {
  test("createModel", () {
    final killerWrapper = KillerWrapper([
      "36b12222-cf59-11ef-9cd2-0242ac120002",
      "Trapper",
      "assets/icons/dbd/killer/trapper.png",
    ]);
    final createModel = killerWrapper.createModel();
    expect('Killer(uniqueId: 36b12222-cf59-11ef-9cd2-0242ac120002, name: Trapper, imagePath: assets/icons/dbd/killer/trapper.png)', createModel.toString());
  });
}