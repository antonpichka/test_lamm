import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/balance/balance.dart';
import 'package:test_lamm/model/banned_killer/list_banned_killer.dart';
import 'package:test_lamm/model/picked_killer/list_picked_killer.dart';
import 'package:test_lamm/model/round/list_round.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class GameMatch extends BaseModel {
  final DateTime creationAt;
  final bool isCompleted;
  final String actionLog;
  final Balance balance;
  final User firstUser;
  final User secondUser;
  final ListBannedKiller listBannedKiller;
  final ListPickedKiller listPickedKiller;
  final ListRound listRound;
  final int pointsByStatsWFirstUser;
  final int pointsByStatsWSecondUser;
  final int pointsPerGameMatchWFirstUser;
  final int pointsPerGameMatchWSecondUser;

  const GameMatch(super.uniqueId, this.creationAt, this.isCompleted, this.actionLog, this.balance, this.firstUser, this.secondUser, this.listBannedKiller, this.listPickedKiller, this.listRound, this.pointsByStatsWFirstUser, this.pointsByStatsWSecondUser, this.pointsPerGameMatchWFirstUser, this.pointsPerGameMatchWSecondUser);

  @override
  GameMatch clone() => GameMatch(uniqueId, creationAt, isCompleted, actionLog, balance.clone(), firstUser.clone(), secondUser.clone(), listBannedKiller.clone(), listPickedKiller.clone(), listRound.clone(), pointsByStatsWFirstUser, pointsByStatsWSecondUser, pointsPerGameMatchWFirstUser, pointsPerGameMatchWSecondUser);

  @override
  String toString() {
    return "GameMatch(uniqueId: $uniqueId, creationAt: $creationAt, isCompleted: $isCompleted, actionLog: $actionLog, balance: $balance, firstUser: $firstUser, secondUser: $secondUser, listBannedKiller: $listBannedKiller, listPickedKiller: $listPickedKiller, listRound: $listRound, pointsByStatsWFirstUser: $pointsByStatsWFirstUser, pointsByStatsWSecondUser: $pointsByStatsWSecondUser, pointsPerGameMatchWFirstUser: $pointsPerGameMatchWFirstUser, pointsPerGameMatchWSecondUser: $pointsPerGameMatchWSecondUser)";
  }
}