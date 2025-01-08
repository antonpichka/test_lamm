import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class KillerPerk extends BaseModel {
  final String name;
  final String imagePath;

  const KillerPerk(super.uniqueId, this.name, this.imagePath);

  @override
  KillerPerk clone() {
    return KillerPerk(uniqueId, name, imagePath);
  }

  @override
  String toString() {
    return "KillerPerk(uniqueId: $uniqueId, name: $name, imagePath: $imagePath)";
  }
}