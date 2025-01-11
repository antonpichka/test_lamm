import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/round/list_round.dart';
import 'package:test_lamm/model/round/round.dart';
import 'package:test_lamm/model/round/round_wrapper/round_wrapper.dart';

@immutable
base class ListRoundWrapper extends BaseListModelWrapper {
  const ListRoundWrapper(super.listsListObject);

  @override
  ListRound createListModel() {
    final List<Round> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final roundWrapper = RoundWrapper(itemListObject);
      listModel.add(roundWrapper.createModel());
    }
    return ListRound(listModel);
  }
}