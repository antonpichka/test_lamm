import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/picked_killer/picked_killer.dart';

@immutable
base class ListPickedKiller<T extends PickedKiller> extends BaseListModel<T> {
  const ListPickedKiller(super.listModel);

  @override
  ListPickedKiller<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T itemModel in listModel) {
      newListModel.add(itemModel.clone() as T);
    }
    return ListPickedKiller<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListPickedKiller(listModel: [$strListModel])";
  }

  @nonVirtual
  ListPickedKiller getListPickedKillerFromUniqueIdByUserParameterListModel(String uniqueIdByUser) {
    final ListPickedKiller listPickedKiller = ListPickedKiller(List.empty(growable: true));
    for(final T itemModel in listModel) {
      if(itemModel.user.uniqueId != uniqueIdByUser) {
        continue;
      }
      listPickedKiller.insertFromNewModelParameterListModel(itemModel.clone());
    }
    return listPickedKiller;
  }

  @nonVirtual
  int getNumberOfPickedKillersFromUniqueIdByUserParameterListModel(String uniqueIdByUser) {
    int iteration = 0;
    for(final T itemModel in listModel) {
      if(itemModel.user.uniqueId != uniqueIdByUser) {
        continue;
      }
      iteration++;
    }
    return iteration;
  }

  @nonVirtual
  bool isWhereNumberOfPickedKillersLessWEqualFromUniqueIdByFirstUserAndUniqueIdBySecondUser(String uniqueIdByFirstUser, String uniqueIdBySecondUser) {
    return getNumberOfPickedKillersFromUniqueIdByUserParameterListModel(uniqueIdByFirstUser)
        <= getNumberOfPickedKillersFromUniqueIdByUserParameterListModel(uniqueIdBySecondUser);
  }

  @nonVirtual
  bool isWhereNumberOfPickedKillersMoreFromUniqueIdByFirstUserAndUniqueIdBySecondUser(String uniqueIdByFirstUser, String uniqueIdBySecondUser) {
    return getNumberOfPickedKillersFromUniqueIdByUserParameterListModel(uniqueIdByFirstUser)
        > getNumberOfPickedKillersFromUniqueIdByUserParameterListModel(uniqueIdBySecondUser);
  }
}