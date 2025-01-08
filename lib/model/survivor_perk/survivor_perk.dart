import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class SurvivorPerk extends BaseModel {
  final String name;
  final String imagePath;

  const SurvivorPerk(super.uniqueId, this.name, this.imagePath);

  @override
  SurvivorPerk clone() {
    return SurvivorPerk(uniqueId, name, imagePath);
  }

  @override
  String toString() {
    return "SurvivorPerk(uniqueId: $uniqueId, name: $name, imagePath: $imagePath)";
  }
}