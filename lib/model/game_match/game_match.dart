import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/balance/balance.dart';
import 'package:test_lamm/model/banned_killer/list_banned_killer.dart';
import 'package:test_lamm/model/picked_killer/list_picked_killer.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class GameMatch extends BaseModel {
  final DateTime creationAt;
  final bool isCompleted;
  final String actionLog;
  final Balance balance;
  final User firstUser;
  final User secondUser;
  // final int ratingPointsByStatsWFirstUser;
  // final int ratingPointsByStatsWSecondUser;
  final ListBannedKiller listBannedKiller;
  final ListPickedKiller listPickedKiller;
  // final ListRound listRound;
  // final int totalNumberOfRatingPointsWGameMatchWFirstUser;
  // final int totalNumberOfRatingPointsWGameMatchWSecondUser;

  const GameMatch(super.uniqueId, this.creationAt, this.isCompleted, this.actionLog, this.balance, this.firstUser, this.secondUser, this.listBannedKiller, this.listPickedKiller);

  @override
  GameMatch clone() {
    return GameMatch(uniqueId, creationAt, isCompleted, actionLog, balance.clone(), firstUser.clone(), secondUser.clone(), listBannedKiller.clone(), listPickedKiller.clone());
  }

  @override
  String toString() {
    return "GameMatch(uniqueId: $uniqueId, creationAt: $creationAt, isCompleted: $isCompleted, actionLog: $actionLog, balance: $balance, firstUser: $firstUser, secondUser: $secondUser, listBannedKiller: $listBannedKiller, listPickedKiller: $listPickedKiller)";
  }
}