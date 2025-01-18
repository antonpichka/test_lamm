import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/round/round.dart';

@immutable
base class ListRound<T extends Round> extends BaseListModel<T> {
  const ListRound(super.listModel);

  @override
  ListRound<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T itemModel in listModel) {
      newListModel.add(itemModel.clone() as T);
    }
    return ListRound<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListRound(listModel: [$strListModel])";
  }

  @nonVirtual
  ListRound get getListRoundWhereUnfinishedParameterListModel {
    final ListRound cloneFirst = clone();
    for(final T itemModel in listModel) {
      if(itemModel.isWhereFinishedRoundParametersSix()) {
        cloneFirst.deleteFromUniqueIdByModelParameterListModel(itemModel.uniqueId);
        continue;
      }
    }
    return cloneFirst;
  }

  @nonVirtual
  bool isWhereFinishedRoundsParameterListModel() {
    bool isFinishedRound = true;
    for(final T itemModel in listModel) {
      if(itemModel.isWhereUnfinishedRoundParametersSix()) {
        isFinishedRound = false;
        break;
      }
    }
    return isFinishedRound;
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWFirstFromUniqueIdByUser(String uniqueIdByUser) {
    if(isWhereFinishedRoundsParameterListModel()) {
      return false;
    }
    final first = getListRoundWhereUnfinishedParameterListModel.listModel.first;
    return first.isWhereEqualsAndFalseFromUniqueIdByUserParametersPickedKillerAndIsTheKillerReadyWFirstUser(uniqueIdByUser);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorNotReadyWSecondFromOne(String uniqueIdByUser) {
    if(isWhereFinishedRoundsParameterListModel()) {
      return false;
    }
    final first = getListRoundWhereUnfinishedParameterListModel.listModel.first;
    return first.isWhereEqualsAndTrueAndFalseFromUniqueIdByUserParametersThree(uniqueIdByUser);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorReadyWSecondFromOne(String uniqueIdByUser) {
    if(isWhereFinishedRoundsParameterListModel()) {
      return false;
    }
    final first = getListRoundWhereUnfinishedParameterListModel.listModel.first;
    return first.isWhereEqualsAndLessWEqualsZeroAndTrueAndTrueFromUniqueIdByUserParametersFour(uniqueIdByUser);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWSecondFromOne(String uniqueIdByUser) {
    if(isWhereFinishedRoundsParameterListModel()) {
      return false;
    }
    final first = getListRoundWhereUnfinishedParameterListModel.listModel.first;
    return first.isWhereEqualsAndMoreZeroAndFalseFromUniqueIdByUserParametersThree(uniqueIdByUser);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorNotReadyWFirstFromOne(String uniqueIdByUser) {
    if(isWhereFinishedRoundsParameterListModel()) {
      return false;
    }
    final first = getListRoundWhereUnfinishedParameterListModel.listModel.first;
    return first.isWhereEqualsAndMoreZeroAndTrueAndFalseFromUniqueIdByUserParametersFour(uniqueIdByUser);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorReadyWFirstFromOne(String uniqueIdByUser) {
    if(isWhereFinishedRoundsParameterListModel()) {
      return false;
    }
    final first = getListRoundWhereUnfinishedParameterListModel.listModel.first;
    return first.isWhereEqualsAndMoreZeroAndTrueAndTrueFromUniqueIdByUserParametersFour(uniqueIdByUser);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWSecondFromUniqueIdByUser(String uniqueIdByUser) {
    if(isWhereFinishedRoundsParameterListModel()) {
      return false;
    }
    final first = getListRoundWhereUnfinishedParameterListModel.listModel.first;
    return first.isWhereEqualsAndFalseFromUniqueIdByUserParametersPickedKillerAndIsTheKillerReadyWSecondUser(uniqueIdByUser);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorNotReadyWFirstFromUniqueIdByUser(String uniqueIdByUser) {
    if(isWhereFinishedRoundsParameterListModel()) {
      return false;
    }
    final first = getListRoundWhereUnfinishedParameterListModel.listModel.first;
    return first.isWhereEqualsAndTrueAndFalseFromUniqueIdByUserParametersThreeFirst(uniqueIdByUser);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorReadyWFirstFromUniqueIdByUser(String uniqueIdByUser) {
    if(isWhereFinishedRoundsParameterListModel()) {
      return false;
    }
    final first = getListRoundWhereUnfinishedParameterListModel.listModel.first;
    return first.isWhereEqualsAndLessWEqualsZeroAndTrueAndTrueFromUniqueIdByUserParametersFourFirst(uniqueIdByUser);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWFirstFromUniqueIdByUserFirst(String uniqueIdByUser) {
    if(isWhereFinishedRoundsParameterListModel()) {
      return false;
    }
    final first = getListRoundWhereUnfinishedParameterListModel.listModel.first;
    return first.isWhereEqualsAndMoreZeroAndFalseFromUniqueIdByUserParametersThreeFirst(uniqueIdByUser);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorNotReadyWSecondFromUniqueIdByUser(String uniqueIdByUser) {
    if(isWhereFinishedRoundsParameterListModel()) {
      return false;
    }
    final first = getListRoundWhereUnfinishedParameterListModel.listModel.first;
    return first.isWhereEqualsAndMoreZeroAndTrueAndFalseFromUniqueIdByUserParametersFourFirst(uniqueIdByUser);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorReadyWSecondFromUniqueIdByUser(String uniqueIdByUser) {
    if(isWhereFinishedRoundsParameterListModel()) {
      return false;
    }
    final first = getListRoundWhereUnfinishedParameterListModel.listModel.first;
    return first.isWhereEqualsAndMoreZeroAndTrueAndTrueFromUniqueIdByUserParametersFourFirst(uniqueIdByUser);
  }
}