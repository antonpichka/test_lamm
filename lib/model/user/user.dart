import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class User extends BaseModel {
  final DateTime creationAt;
  final String authorizationType;

  const User(super.uniqueId, this.creationAt, this.authorizationType);

  @override
  User clone() {
    return User(uniqueId, creationAt, authorizationType);
  }

  @override
  String toString() {
    return "User(uniqueId: $uniqueId, creationAt: $creationAt, authorizationType: $authorizationType)";
  }
}