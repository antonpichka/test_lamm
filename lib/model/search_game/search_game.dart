import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/user/user.dart';

@immutable
base class SearchGame extends BaseModel {
  final DateTime updatedAt;
  final User user;
  final User userWEnemy;
  final bool isSearching;
  final bool isAccepted;
  final bool isAcceptedWEnemy;

  const SearchGame(super.uniqueId, this.updatedAt, this.user, this.userWEnemy, this.isSearching, this.isAccepted, this.isAcceptedWEnemy);

  @override
  SearchGame clone() => SearchGame(uniqueId, updatedAt, user.clone(), userWEnemy.clone(), isSearching, isAccepted, isAcceptedWEnemy);

  @override
  String toString() {
    return "SearchGame(uniqueId: $uniqueId, updatedAt: $updatedAt, user: $user, userWEnemy: $userWEnemy, isSearching: $isSearching, isAccepted: $isAccepted, isAcceptedWEnemy: $isAcceptedWEnemy)";
  }

  bool isWhereTrueParametersIsAcceptedAndIsAcceptedWEnemy() {
    return isAccepted && isAcceptedWEnemy;
  }

  bool isWhereTrueAndIsEmptyByUniqueIdParametersIsSearchingAndUserWEnemy() {
    return isSearching && userWEnemy.uniqueId.isEmpty;
  }

  bool isWhereTrueAndIsNotEmptyByUniqueIdParametersIsSearchingAndUserWEnemy() {
    return isSearching && userWEnemy.uniqueId.isNotEmpty;
  }
}