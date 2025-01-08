import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/balance/balance_rr_killer/list_balance_rr_killer.dart';
import 'package:test_lamm/model/season/season.dart';

@immutable
base class Balance extends BaseModel {
  final Season season;
  final int numberOfRounds;
  final ListBalanceRRKiller listBalanceRRKiller;

  const Balance(super.uniqueId, this.season, this.numberOfRounds, this.listBalanceRRKiller);

  @override
  Balance clone() {
    return Balance(uniqueId, season.clone(), numberOfRounds, listBalanceRRKiller.clone());
  }

  @override
  String toString() {
    return "Season(uniqueId: $uniqueId, season: $season, numberOfRounds: $numberOfRounds, listBalanceRRKiller: $listBalanceRRKiller)";
  }
}