import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/banned_killer/banned_killer.dart';
import 'package:test_lamm/model/banned_killer/banned_killer_wrapper/banned_killer_wrapper.dart';
import 'package:test_lamm/model/banned_killer/list_banned_killer.dart';

@immutable
base class ListBannedKillerWrapper extends BaseListModelWrapper {
  const ListBannedKillerWrapper(super.listsListObject);

  @override
  ListBannedKiller createListModel() {
    final List<BannedKiller> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final bannedKillerWrapper = BannedKillerWrapper(itemListObject);
      listModel.add(bannedKillerWrapper.createModel());
    }
    return ListBannedKiller(listModel);
  }
}