enum EnumDataForGameMatchEEMyFirstUserVM {
  isLoading,
  exception,

  thisIsMyPickedKillerWMyTurnToBanTheKillersMaps,
  thisIsMyPickedKillerWEnemyTurnToBanTheKillersMaps,
  thisIsMyPickedKillerWMyTurnToPickTheKillersPerks,
  thisIsMyPickedKillerWEnemyTurnToPickTheKillersPerks,
  thisIsMyPickedKillerWMyTurnToPickTheSurvivorsPerks,
  thisIsMyPickedKillerWEnemyTurnToPickTheSurvivorsPerks,

  thisIsNotMyPickedKillerWEnemyTurnToBanTheKillersMaps,
  thisIsNotMyPickedKillerWMyTurnToBanTheKillersMaps,
  thisIsNotMyPickedKillerWEnemyTurnToPickTheKillersPerks,
  thisIsNotMyPickedKillerWMyTurnToPickTheKillersPerks,
  thisIsNotMyPickedKillerWEnemyTurnToPickTheSurvivorsPerks,
  thisIsNotMyPickedKillerWMyTurnToPickTheSurvivorsPerks,

  thisIsNobodyPickedKillerWMyTurnToBanTheKillersMaps,
  thisIsNobodyPickedKillerWEnemyTurnToBanTheKillersMaps,
  thisIsNobodyPickedKillerWMyTurnToPickTheKillersPerks,
  thisIsNobodyPickedKillerWEnemyTurnToPickTheKillersPerks,
  thisIsNobodyPickedKillerWMyTurnToPickTheSurvivorsPerks,
  thisIsNobodyPickedKillerWEnemyTurnToPickTheSurvivorsPerks,

  thisIsPickedKillerWSystemTurnToPickTheKillersMaps,
  thisIsPickedKillerWSystemTurnToPickTheKillersPerks,
  thisIsPickedKillerWSystemTurnToPickTheSurvivorsPerks,

  myTurnToBanTheKillerInTheFirstStage,
  enemyTurnToBanTheKillerInTheFirstStage,
  myTurnToPickTheKillerInTheFirstStage,
  enemyTurnToPickTheKillerInTheFirstStage,
  myTurnToBanTheKillerInTheSecondStage,
  enemyTurnToBanTheKillerInTheSecondStage,
  systemTurnToPickTheKillerInTheSecondStage,
  /* ListRound */
  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == firstUser.uniqueId && !isTheKillerReadyWFirstUser
  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == firstUser.uniqueId && !isTheSurvivorReadyWSecondUser
  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == firstUser.uniqueId && chaseTimeInMillisecondsWSecondUser <= 0 && isTheKillerReadyWFirstUser && isTheSurvivorReadyWSecondUser
  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == firstUser.uniqueId && chaseTimeInMillisecondsWSecondUser > 0 && !isTheKillerReadyWSecondUser
  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == firstUser.uniqueId && chaseTimeInMillisecondsWSecondUser > 0 && !isTheSurvivorReadyWFirstUser
  /// NEXT ROUND
  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == firstUser.uniqueId && chaseTimeInMillisecondsWSecondUser > 0 && isTheKillerReadyWSecondUser && isTheSurvivorReadyWFirstUser

  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == secondUser.uniqueId && !isTheKillerReadyWSecondUser
  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == secondUser.uniqueId && !isTheSurvivorReadyWFirstUser
  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == secondUser.uniqueId && chaseTimeInMillisecondsWFirstUser <= 0 && isTheKillerReadyWSecondUser && isTheSurvivorReadyWFirstUser
  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == secondUser.uniqueId && chaseTimeInMillisecondsWFirstUser > 0 && !isTheKillerReadyWFirstUser
  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == secondUser.uniqueId && chaseTimeInMillisecondsWFirstUser > 0 && !isTheSurvivorReadyWSecondUser
  /// NEXT ROUND
  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == secondUser.uniqueId && chaseTimeInMillisecondsWFirstUser > 0 && isTheKillerReadyWFirstUser && isTheSurvivorReadyWSecondUser

  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == "" && !isTheKillerReadyWFirstUser
  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == "" && !isTheSurvivorReadyWSecondUser
  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == "" && chaseTimeInMillisecondsWSecondUser <= 0 && isTheKillerReadyWFirstUser && isTheSurvivorReadyWSecondUser
  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == "" && chaseTimeInMillisecondsWSecondUser > 0 && !isTheKillerReadyWSecondUser
  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == "" && chaseTimeInMillisecondsWSecondUser > 0 && !isTheSurvivorReadyWFirstUser
  /// END GAME
  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == "" && chaseTimeInMillisecondsWSecondUser > 0 && isTheKillerReadyWSecondUser && isTheSurvivorReadyWFirstUser
  completed
}