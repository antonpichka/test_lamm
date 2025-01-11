import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/balance/balance.dart';
import 'package:test_lamm/model/balance/balance_wrapper/balance_wrapper.dart';
import 'package:test_lamm/model/balance/list_balance.dart';

@immutable
base class ListBalanceWrapper extends BaseListModelWrapper {
  const ListBalanceWrapper(super.listsListObject);

  @override
  ListBalance createListModel() {
    final List<Balance> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final balanceWrapper = BalanceWrapper(itemListObject);
      listModel.add(balanceWrapper.createModel());
    }
    return ListBalance(listModel);
  }
}