import 'package:test/test.dart';
import 'package:test_lamm/model/example/example_wrapper/list_example_wrapper.dart';

void main() {
  test("createListModel", () {
    final listExampleWrapper = ListExampleWrapper([
      [
        "8fbd97a0-cfc3-11ef-9cd2-0242ac120002",
      ],
      [
        "8fbd97a0-cfc3-11ef-9cd2-0242ac120002",
      ]
    ]);
    final createListModel = listExampleWrapper.createListModel();
    expect('ListExample(listModel: [\n'
        'Example(uniqueId: 8fbd97a0-cfc3-11ef-9cd2-0242ac120002),\n'
        'Example(uniqueId: 8fbd97a0-cfc3-11ef-9cd2-0242ac120002),\n'
        '])', createListModel.toString());
  });
}