import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/balance_killer/balance_killer.dart';
import 'package:test_lamm/model/balance_killer/balance_killer_wrapper/balance_killer_wrapper.dart';
import 'package:test_lamm/model/balance_killer/list_balance_killer.dart';

@immutable
base class ListBalanceKillerWrapper extends BaseListModelWrapper {
  const ListBalanceKillerWrapper(super.listsListObject);

  @override
  ListBalanceKiller createListModel() {
    final List<BalanceKiller> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final balanceKillerWrapper = BalanceKillerWrapper(itemListObject);
      listModel.add(balanceKillerWrapper.createModel());
    }
    return ListBalanceKiller(listModel);
  }
}