import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/killer/killer.dart';
import 'package:test_lamm/model/killer/killer_wrapper/killer_wrapper.dart';
import 'package:test_lamm/model/killer/list_killer.dart';

@immutable
base class ListKillerWrapper extends BaseListModelWrapper {
  const ListKillerWrapper(super.listObject);

  @override
  ListKiller createListModel() {
    final List<Killer> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final killerWrapper = KillerWrapper(itemListObject);
      listModel.add(killerWrapper.createModel());
    }
    return ListKiller(listModel);
  }
}