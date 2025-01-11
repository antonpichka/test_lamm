import 'package:test/test.dart';
import 'package:test_lamm/model/example/example_wrapper/example_wrapper.dart';

void main() {
  test("createModel", () {
    final exampleWrapper = ExampleWrapper([
      "8fbd97a0-cfc3-11ef-9cd2-0242ac120002",
    ]);
    final createModel = exampleWrapper.createModel();
    expect('Example(uniqueId: 8fbd97a0-cfc3-11ef-9cd2-0242ac120002)', createModel.toString());
  });
}