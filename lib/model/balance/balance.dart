import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/balance_killer/list_balance_killer.dart';
import 'package:test_lamm/model/season/season.dart';
import 'package:test_lamm/named_utility/algorithms_utility.dart';

@immutable
base class Balance extends BaseModel {
  final Season season;
  final int numberOfRounds;
  final ListBalanceKiller listBalanceKiller;

  const Balance(super.uniqueId, this.season, this.numberOfRounds, this.listBalanceKiller);

  @override
  Balance clone() {
    return Balance(uniqueId, season.clone(), numberOfRounds, listBalanceKiller.clone());
  }

  @override
  String toString() {
    return "Balance(uniqueId: $uniqueId, season: $season, numberOfRounds: $numberOfRounds, listBalanceKiller: $listBalanceKiller)";
  }

  int get getNumberOfAllKillersThatNeedToBeBannedParametersListBalanceKillerAndNumberOfRounds {
    return listBalanceKiller.listModel.length - numberOfRounds;
  }

  int get getNumberOfAllKillersThatNeedToBeBannedInTheFirstStageWhereUsedInterestFormula {
    return AlgorithmsUtility.getInterestFormulaFromNumberAndFindPercent(getNumberOfAllKillersThatNeedToBeBannedParametersListBalanceKillerAndNumberOfRounds, 50);
  }


}