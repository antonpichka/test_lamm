enum EnumDataForGameMatchEEMyFirstUserVM {
  isLoading,
  exception,
  /* START --> There is no binding to a specific stage, it refers to the last chosen killer */
  myTurnToBanTheKillerMaps,
  enemyTurnToBanTheKillerMaps,
  systemTurnToPickTheKillerMaps,
  myTurnToPickTheKillerPerks,
  enemyTurnToPickTheKillerPerks,
  systemTurnToPickTheKillerPerks,
  myTurnToPickTheSurvivorPerks,
  enemyTurnToPickTheSurvivorPerks,
  systemTurnToPickTheSurvivorPerks,
  /* END --> There is no binding to a specific stage, it refers to the last chosen killer */
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
  /// NEXT ROUND OR END GAME
  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == firstUser.uniqueId && chaseTimeInMillisecondsWSecondUser > 0 && isTheKillerReadyWSecondUser && isTheSurvivorReadyWFirstUser

  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == secondUser.uniqueId && !isTheKillerReadyWSecondUser
  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == secondUser.uniqueId && !isTheSurvivorReadyWFirstUser
  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == secondUser.uniqueId && chaseTimeInMillisecondsWFirstUser <= 0 && isTheKillerReadyWSecondUser && isTheSurvivorReadyWFirstUser
  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == secondUser.uniqueId && chaseTimeInMillisecondsWFirstUser > 0 && !isTheKillerReadyWFirstUser
  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == secondUser.uniqueId && chaseTimeInMillisecondsWFirstUser > 0 && !isTheSurvivorReadyWSecondUser
  /// NEXT ROUND OR END GAME
  // if - Are there any unfinished rounds? && pickedKiller.user.uniqueId == secondUser.uniqueId && chaseTimeInMillisecondsWFirstUser > 0 && isTheKillerReadyWFirstUser && isTheSurvivorReadyWSecondUser
  completed
}