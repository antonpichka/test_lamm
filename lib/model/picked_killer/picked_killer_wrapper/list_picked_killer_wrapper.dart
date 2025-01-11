import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/picked_killer/list_picked_killer.dart';
import 'package:test_lamm/model/picked_killer/picked_killer.dart';
import 'package:test_lamm/model/picked_killer/picked_killer_wrapper/picked_killer_wrapper.dart';

@immutable
base class ListPickedKillerWrapper extends BaseListModelWrapper {
  const ListPickedKillerWrapper(super.listsListObject);

  @override
  ListPickedKiller createListModel() {
    final List<PickedKiller> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final pickedKillerWrapper = PickedKillerWrapper(itemListObject);
      listModel.add(pickedKillerWrapper.createModel());
    }
    return ListPickedKiller(listModel);
  }
}